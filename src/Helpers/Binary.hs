module Helpers.Binary (lastBits, bitsList, splitBits) where

-- Number of partitions of the binary expansion of n into consecutive blocks with no leading zeroes.
-- 23 = 0b11011 -> [0, 0b1, 0b11, 0b011, 0b1011] = [0,1,3,3,11]
lastBits :: Int -> [Int]
lastBits n = recurse 0 n where
  recurse _ 0 = []
  recurse k n' = (n `mod` 2^k) : recurse (k + 1) (div n' 2)

bitsList :: Integer -> [Bool]
bitsList 0 = [False]
bitsList n = recurse n [] where
  recurse n' b
    | n' == 0 = b
    | even n' = recurse (n' `div` 2) (False : b)
    | odd n'  = recurse (n' `div` 2) (True : b)

splitBits :: Int -> [(Int, Int)]
splitBits n = recurse 0 n where
  recurse _ 0 = []
  recurse k n' = (n `div` 2^k, n `mod` 2^k) : recurse (k + 1) (div n' 2)
