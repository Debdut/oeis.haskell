module Nonpalindromes.A252698 (a252698) where
import Palindromes.A249638 (a249638)

a252698 :: Int -> Integer
a252698 0 = 0
a252698 n = 5^n - a249638 n
