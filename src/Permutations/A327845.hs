module Permutations.A327845 where
import Helpers.ListHelpers (firstDifferences, allDistinct)
import Data.List (permutations)
import Data.Set (Set)
import qualified Data.Set as Set

distinctDifferences :: Integral a => [a] -> Bool
distinctDifferences [] = True
distinctDifferences l = allDistinct l && distinctDifferences (firstDifferences l)

a327845 :: Int -> Int
a327845 n = length $ filter (distinctDifferences . firstDifferences) $ permutations [1..n]
