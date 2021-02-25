module CostasLikeArrays.A306272 where
import Helpers.CostasLikeArrays (distinctDistances)
import Data.List (permutations)

a306272 :: Int -> Int
a306272 n = sum $ map distinctDistances $ permutations [0..n-1]
