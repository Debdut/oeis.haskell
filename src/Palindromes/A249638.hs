module Palindromes.A249638 (a249638) where
import Helpers.PalindromeCounter (countPalindromes)

a249638 :: Int -> Integer
a249638 = (!!) a249638_list

a249638_list :: [Integer]
a249638_list = countPalindromes 5
