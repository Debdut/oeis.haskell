module Miscellaneous.A235726 (a235726, a235726_list) where
import Helpers.Primes (properFactors)
import HelperSequences.A000196 (a000196)
import Data.List (genericIndex)

a235726 :: Integral a => a -> Integer
a235726 n = a235726_list `genericIndex` (n - 1)

a235726_list :: [Integer]
a235726_list = 1 : 2 : 1 : 2 : recurse 5 where
  recurse n = nextTerm : recurse (n + 1) where
    nextTerm = head $ filter (`notElem` disallowedValues) [1..] where
      disallowedValues = a235726 (n - 1) : disallowedSums where
        disallowedSums = map (a235726 . divisorSum n) $ properFactors n

divisorSum n d = d + n `div` d
