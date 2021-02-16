module Palindromes.A006995 (a006995) where
import Text.Printf (printf)

a006995 :: Int -> Integer
a006995 n = a006995_list !! (n - 1)

a006995_list :: [Integer]
a006995_list = filter isBinaryPalindrome [0..] where
  isBinaryPalindrome n = binaryString n == reverse (binaryString n) where
    binaryString = printf "%b" :: Integer -> String
