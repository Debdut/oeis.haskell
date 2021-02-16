module Palindromes.A298481 (a298481)where
import  Helpers.PalindromicPartition (binaryRepresentation, postPalindromeTails)

a298481 :: Int -> Int
a298481 n = recurse 0 [binaryRepresentation n] where
  recurse k tails
    | count > 0 = count
    | otherwise = recurse (k + 1) (concatMap postPalindromeTails tails) where
      count = length $ filter (=="") tails
