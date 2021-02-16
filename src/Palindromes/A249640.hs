module Palindromes.A249640 (a249640) where
import Helpers.PalindromeCounter (countPalindromes)

a249640 :: Int -> Integer
a249640 = (!!) a249640_list

a249640_list :: [Integer]
a249640_list = countPalindromes 7
