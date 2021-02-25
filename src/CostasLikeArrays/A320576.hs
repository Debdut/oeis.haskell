module CostasLikeArrays.A320576 where
import Helpers.CostasLikeArrays (distinctDistances, countPermutationsUpToDihedralSymmetry)
import Helpers.Records (allMin)
import Data.List (permutations)

a320576 :: Int -> Int
a320576 n = countPermutationsUpToDihedralSymmetry n $ allMin distinctDistances $ permutations [0..n-1]
