module Nonpalindromes.A252703 (a252703) where
import Palindromes.A249643 (a249643)

a252703 :: Int -> Integer
a252703 0 = 0
a252703 n = 10^n - a249643 n
