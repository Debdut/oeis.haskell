module CostasLikeArrays.A321534 where
import Helpers.CostasLikeArrays (distinctDirections, countPermutationsUpToDihedralSymmetry)
import Helpers.Records (allMax)
import Data.List (permutations)

a321534 :: Int -> Int
a321534 n = countPermutationsUpToDihedralSymmetry n $ allMax distinctDirections $ permutations [0..n-1]
