module Nonpalindromes.A252700 (a252700) where
import Palindromes.A249640 (a249640)

a252700 :: Int -> Integer
a252700 0 = 0
a252700 n = 7^n - a249640 n
