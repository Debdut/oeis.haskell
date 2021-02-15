module Nonpalindromes.A252696 (a252696) where
import Palindromes.A248122 (a248122)

a252696 :: Int -> Integer
a252696 0 = 0
a252696 n = 3^n - a248122 n
