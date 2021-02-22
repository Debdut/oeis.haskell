module Helpers.Polynomial (validTerms, polynomialAvoidingSequence) where
import Data.Ratio (Ratio, (%), denominator, numerator)
import Data.List ((\\), genericLength, genericTake)
import Data.Maybe (mapMaybe)

type SubsetFunction = [(Integer, Integer)] -> [[(Integer, Integer)]]

interpolate :: [(Integer, Integer)] -> Integer -> Ratio Integer
interpolate points x = sum $ map lagrangeProduct points where
  lagrangeProduct (x_j, y_j) = (y_j % 1) * product (map fraction xs) where
    fraction x_k = (x - x_k) % (x_j - x_k)
    xs = filter (/= x_j) $ map fst points

selectIntegers :: [Ratio Integer] -> [Integer]
selectIntegers = mapMaybe asInteger where
  asInteger q
    | denominator q == 1 = Just $ numerator q
    | otherwise          = Nothing

validTerms :: SubsetFunction -> [Integer] -> [Integer]
validTerms subsets ys = [1..] \\ illegalTerms where
  k = genericLength ys
  illegalTerms = selectIntegers $ map (`interpolate` k) $ subsets (zip [0..] ys)

-- This is quite inefficient
-- (1) It recomputes the `interpolate` function each time instead of caching the
--   results
-- (2) It stores the illegalTerms as a list instead of as a set
-- (3) It compares against interpolated functions that are clearly negative
polynomialAvoidingSequence :: SubsetFunction -> [Integer]
polynomialAvoidingSequence subsets = polynomialSequence where
  valid = validTerms subsets
  polynomialSequence = recurse 0 where
    recurse k = nextTerm : recurse (k + 1) where
      nextTerm = head (valid points) where
        points = genericTake k polynomialSequence
