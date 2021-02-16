module Palindromes.A298474 (a298474)where
import HelperSequences.A090701 (a090701_list)
import Data.List (elemIndex)

a298474 :: Int -> Int
a298474 n = case elemIndex n a090701_list of (Just a) -> a + 1
