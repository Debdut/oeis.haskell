module Helpers.PalindromeCounter (countPalindromes) where

countPalindromes :: Int -> [Integer]
countPalindromes b = count where
  count = [0, 0] ++ remainder 1 where
    remainder n = nextTerm : remainder (n + 1) where
      nextTerm = toInteger b * (count !! n) + toInteger b ^ k - (count !! k)
      k = 1 + (n `div` 2)
