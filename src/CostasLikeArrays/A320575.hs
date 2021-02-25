module CostasLikeArrays.A320575 where
import Helpers.CostasLikeArrays (distinctDistances)
import Helpers.Records (countMin)
import Data.List (permutations)

a320575 :: Int -> Int
a320575 n = countMin distinctDistances $ permutations [0..n-1]
