module CoinsInARow.A276163 (a276163) where
import Helpers.CoinsInARow (minimaxDifference)
import Data.List (permutations)

-- Best score differential for first player (of all possible games)
a276163 :: Int -> Int
a276163 n = maximum $ map minimaxDifference $ permutations [1..n]
