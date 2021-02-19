module Permutations.A333726 (a333726, a333726T) where
import Permutations.A068424 (a068424T)
import Data.MemoCombinators (memo2, integral)

a333726T :: Integer -> Integer -> Integer
a333726T = memo2 integral integral a333726T' where
  a333726T' n k
    | n == 0    = 1
    | n < k     = 0
    | n == k    = product [1..n-1]
    | otherwise = (n - 1) * a333726T (n - 1) k + a068424T (n-1) (k-1) * a333726T (n - k) k

a333726_row :: Integer -> [Integer]
a333726_row n = map (a333726T n) [1..n]

a333726_list :: [Integer]
a333726_list = concatMap a333726_row [1..]

a333726 :: Int -> Integer
a333726 n = a333726_list !! (n - 1)
