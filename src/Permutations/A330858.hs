module Permutations.A330858 (a330858, a330858T) where
import Permutations.A068424 (a068424T)
import Data.MemoCombinators (memo2, integral)

a330858T :: Integer -> Integer -> Integer
a330858T = memo2 integral integral a330858T' where
  a330858T' n k
    | n == 0    = 1
    | n <= k    = product [1..n]
    | otherwise = n * a330858T (n-1) k - a068424T (n-1) k * a330858T (n-k-1) k

a330858_row :: Integer -> [Integer]
a330858_row n = map (a330858T n) [1..n]

a330858_list :: [Integer]
a330858_list = concatMap a330858_row [1..]

a330858 :: Int -> Integer
a330858 n = a330858_list !! (n - 1)
