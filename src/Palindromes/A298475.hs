module Palindromes.A298475 (a298475) where
import  Helpers.PalindromicPartition (binaryRepresentation, postPalindromeTails)

a298475 :: Int -> Int
a298475 n = recurse 0 [binaryRepresentation n] where
  recurse k tails
    | "" `elem` tails = k
    | otherwise       = recurse (k + 1) (concatMap postPalindromeTails tails)
