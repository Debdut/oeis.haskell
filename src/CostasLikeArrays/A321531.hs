module CostasLikeArrays.A321531 where
import Helpers.CostasLikeArrays (distinctDirections)
import Data.List (permutations)

a321531 :: Int -> Int
a321531 n = maximum $ map distinctDirections $ permutations [0..n-1]
