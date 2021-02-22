module Helpers.CoinsInARow (minimaxDifference, minimaxScore, minimaxScore2) where

minimaxDifference :: [Int] -> Int
minimaxDifference [] = 0
minimaxDifference as = max (head as - minimaxDifference (tail as)) (last as - minimaxDifference (init as))

minimaxScore :: [Int] -> Int
minimaxScore as = (sum as + minimaxDifference as) `div` 2

minimaxScore2 :: [Int] -> Int
minimaxScore2 as = (sum as - minimaxDifference as) `div` 2
