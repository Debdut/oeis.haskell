module CostasLikeArrays.A320574 where
import Helpers.CostasLikeArrays (distinctDistances, countPermutationsUpToDihedralSymmetry)
import Helpers.Records (allMax)
import Data.List (permutations)

a320574 :: Int -> Int
a320574 n = countPermutationsUpToDihedralSymmetry n $ allMax distinctDistances $ permutations [0..n-1]
