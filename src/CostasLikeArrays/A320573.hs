module CostasLikeArrays.A320573 where
import Helpers.CostasLikeArrays (distinctDistances)
import Helpers.Records (countMax)
import Data.List (permutations)


a320573 :: Int -> Int
a320573 n = countMax distinctDistances $ permutations [0..n-1]
