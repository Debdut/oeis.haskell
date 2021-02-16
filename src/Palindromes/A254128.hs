module Palindromes.A254128 (a254128) where

a254128 :: Int -> Integer
a254128 = (!!) a254128_list

a254128_list :: [Integer]
a254128_list = [0, 0] ++ remainder 2 where
    remainder n = 2 * a254128 (n - 1) + delta : remainder (n + 1) where
      delta = if even n then 0 else 2^k - a254128 k where
        k = n `div` 2 + 1
