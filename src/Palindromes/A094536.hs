module Palindromes.A094536 (a094536) where

a094536 :: Int -> Integer
a094536 = (!!) a094536_list

a094536_list :: [Integer]
a094536_list = [0, 0] ++ remainder 2 where
    remainder n = 2 * a094536 (n - 1) + delta : remainder (n + 1) where
      delta = if odd n then 0 else 2^(n `div` 2) - a094536 (n `div` 2)
