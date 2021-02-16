module Palindromes.A249641 (a249641) where
import Helpers.PalindromeCounter (countPalindromes)

a249641 :: Int -> Integer
a249641 n = a249641_list !! n

a249641_list :: [Integer]
a249641_list = countPalindromes 8
