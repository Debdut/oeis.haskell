module Nonpalindromes.A252701 (a252701) where
import Palindromes.A249641 (a249641)

a252701 :: Int -> Integer
a252701 0 = 0
a252701 n = 8^n - a249641 n
