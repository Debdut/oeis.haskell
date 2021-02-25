module CostasLikeArrays.A320448 where
import Helpers.CostasLikeArrays (distinctDistances)
import Data.List (permutations)

a320448 :: Int -> Int
a320448 n = maximum $ map distinctDistances $ permutations [0..n-1]
