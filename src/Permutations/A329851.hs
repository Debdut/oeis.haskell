module Permutations.A329851 (a329851) where
import Data.List (permutations)
import Helpers.ListHelpers (firstDifferences)

nthDifferences :: [Integer] -> Integer
nthDifferences [] = error "nthDifferences is not defined for empty lists"
nthDifferences [a] = a
nthDifferences l = nthDifferences $ firstDifferences l

a329851 :: Int -> Integer
a329851 n = sum $ map (abs . nthDifferences) $ permutations [0..fromIntegral n]
