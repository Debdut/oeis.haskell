module HelperSequences.A067824 (a067824, a067824_list) where

a067824 :: Int -> Integer
a067824 n = a067824_list !! (n - 1)

a067824_list :: [Integer]
a067824_list = 1 : recurse 2 where
  recurse n = nextTerm : recurse (n + 1) where
    nextTerm = 1 + sum (map a067824 $ filter (\d -> n `mod` d == 0) [1..n-1])
