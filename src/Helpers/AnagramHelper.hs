module Helpers.AnagramHelper (possibleAnagramBases, nIsBaseBAnagramOf2n, knIsBaseBAnagramOfN) where
import Data.List (sort)
import Helpers.BaseRepresentation (toBase)
import Helpers.Primes (properFactors)

-- If n and 2*n are anagrams in base b, then (b - 1) | n
possibleAnagramBases :: Integer -> [Integer]
possibleAnagramBases n = map (+1) $ properFactors n

-- Checks if n and 2*n are base-b anagrams.
nIsBaseBAnagramOf2n :: Integral a => a -> a -> Bool
nIsBaseBAnagramOf2n n b = startsWithSmallDigit && (sort n_b == sort n2_b) where
  -- This checks that n and 2n have the same number of digits.
  -- 'last' is slow, so it would be faster if the base representation were built the other direction.
  startsWithSmallDigit = last n_b <= (b `div` 2)
  n_b  = toBase b n
  n2_b = toBase b (2 * n)


-- Use a similar trick as above to check that n and 2n have the same number of digits.
knIsBaseBAnagramOfN :: Integral a => a -> (a, a) -> Bool
knIsBaseBAnagramOfN n (b, k) = sort n_b == sort nk_b where
  n_b  = toBase b n
  nk_b = toBase b (k * n)
