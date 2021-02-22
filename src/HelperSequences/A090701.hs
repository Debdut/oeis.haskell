module HelperSequences.A090701 (a090701, a090701_list) where

a090701 :: Int -> Int
a090701 11 = 5
a090701 n = (n `div` 6) + ((n + 4) `div` 6) + 1

a090701_list :: [Int]
a090701_list = map a090701 [1..]
