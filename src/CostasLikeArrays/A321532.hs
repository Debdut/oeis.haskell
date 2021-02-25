module CostasLikeArrays.A321532 where
import Helpers.CostasLikeArrays (distinctDirections)
import Helpers.Records (countMax)
import Data.List (permutations)

a321532 :: Int -> Int
a321532 n = countMax distinctDirections $ permutations [0..n-1]
