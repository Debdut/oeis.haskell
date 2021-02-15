module Nonpalindromes.A252702 (a252702) where
import Palindromes.A249642 (a249642)

a252702 :: Int -> Integer
a252702 0 = 0
a252702 n = 9^n - a249642 n
