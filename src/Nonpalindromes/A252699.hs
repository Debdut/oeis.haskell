module Nonpalindromes.A252699 (a252699) where
import Palindromes.A249639 (a249639)

a252699 :: Int -> Integer
a252699 0 = 0
a252699 n = 6^n - a249639 n
