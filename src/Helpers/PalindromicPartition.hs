module Helpers.PalindromicPartition (binaryRepresentation, postPalindromeTails) where
import Numeric (showIntAtBase)
import Data.Char (intToDigit)

postPalindromeTails :: String -> [String]
postPalindromeTails base2 = map snd $ filter (isPalindrome . fst) allPartitions where
  allPartitions = map (`splitAt` base2) [1..length base2]

binaryRepresentation :: Int -> String
binaryRepresentation n = showIntAtBase 2 intToDigit n ""

isPalindrome :: String -> Bool
isPalindrome s = s == reverse s
