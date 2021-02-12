module Anagram.A279688 (a279688, a279688_list) where
import Helpers.AnagramHelper (possibleAnagramBases, nIsBaseBAnagramOf2n)

a279688 :: Int -> Integer
a279688 n = a279688_list !! (n - 1)

a279688_list :: [Integer]
a279688_list = 0 : filter isAnyAnagram [1..]

-- There exists some base such that n & 2n are anagrams.
isAnyAnagram :: Integer -> Bool
isAnyAnagram n = any (nIsBaseBAnagramOf2n n) $ possibleAnagramBases n
