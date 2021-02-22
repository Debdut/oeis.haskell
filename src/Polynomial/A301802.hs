module Polynomial.A301802 (a301802) where
import Data.List (subsequences)
import Helpers.Polynomial (validTerms)

a301802 :: Integer ->  Int
a301802 n = length $ a301802_permutations n

a301802_permutations :: Integer -> [[Integer]]
a301802_permutations n = recurse n [[]] where
  recurse 0 known = known
  recurse k known = recurse (k - 1) updated where
    updated = concatMap (appendValidTerms n) known

appendValidTerms :: Integer -> [Integer] -> [[Integer]]
appendValidTerms k currentSequence = map (\i -> currentSequence ++ [i]) smallValidTerms where
  valid = validTerms (tail . subsequences)
  smallValidTerms = takeWhile (<= k) $ valid currentSequence
