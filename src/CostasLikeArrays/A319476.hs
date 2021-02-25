module CostasLikeArrays.A319476 where
import Helpers.CostasLikeArrays (distinctDistances)
import Data.List (permutations)

a319476 :: Int -> Int
a319476 n = minimum $ map distinctDistances $ permutations [0..n-1]
