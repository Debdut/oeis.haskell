module Nonpalindromes.A252697 (a252697) where
import Palindromes.A249629 (a249629)

a252697 :: Int -> Integer
a252697 0 = 0
a252697 n = 4^n - a249629 n
