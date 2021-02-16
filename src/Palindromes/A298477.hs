module Palindromes.A298477 (a298477) where
import Palindromes.A298475 (a298475)
import HelperSequences.A090701 (a090701)

a298477 :: Int -> Int
a298477 n = 2 * length (filter (==targetSize) $  map a298475 [2^(n-1)..2^n - 1]) where
  targetSize = a090701 n
