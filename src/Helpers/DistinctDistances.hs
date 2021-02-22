module Helpers.DistinctDistances (distinctDistances) where
import Data.List (nub)

distinctDistances :: Integer -> Integer -> Int
distinctDistances n k = length $ nub [i^2 + j^2 | i <- [0..n-1], j <- [0..k-1]]
