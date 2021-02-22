module Polynomial.A300670 (a300670, a300670_list) where
import Helpers.Polynomial (polynomialAvoidingSequence)
import Data.List (genericTake)
import Helpers.Table (tableByAntidiagonals)
import Helpers.Subsets (combinations)

a300670 :: Int -> Integer
a300670 n = a300670_list !! (n - 1)

a300670_list :: [Integer]
a300670_list = map (findEntry . tableByAntidiagonals) [0..] where
  findEntry (k, n) = a300670_rows !! n !! k

a300670_row :: Int -> [Integer]
a300670_row n = polynomialAvoidingSequence subsets where
  subsets points = concatMap (`combinations` points) [1..n]

a300670_rows :: [[Integer]]
a300670_rows = map a300670_row [1..]
-- a300670 :: Int -> Integer
-- a300670 n = a300670_list !! (n - 1)
--
-- -- This is quite inefficient
-- -- (1) It recomputes the `interpolate` function each time instead of caching the
-- --   results
-- -- (2) It stores the illegalTerms as a list instead of as a set
-- -- (3) It compares against interpolated functions that are clearly negative
-- a300670_list :: [Integer]
-- a300670_list = map (+1) polynomialSequence where
--   polynomialSequence = 0 : recurse 1 where
--     recurse k = nextTerm : recurse (k + 1) where
--       nextTerm = head (validTerms points) where
--         points = genericTake k polynomialSequence
