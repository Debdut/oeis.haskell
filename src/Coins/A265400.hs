module Coins.A265400 (a265400, a265400_list) where

a265400 :: Int -> Int
a265400 n = a265400_list !! (n - 1)

a265400_list :: [Int]
a265400_list = 0 : 0 : remainder 1 1 where
  remainder s n = f s n ++ remainder s' n' where
    f a b = (0 : take b [a..]) ++ (0 : take b [a + b - 1..])
    s' = s + 2 * n - 2
    n' = n + 1
