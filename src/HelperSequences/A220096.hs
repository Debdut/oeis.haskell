module HelperSequences.A220096 (a220096) where
import Helpers.Primes (isPrime, properFactors)

a220096 :: Integer -> Integer
a220096 n
  | isPrime n = n - 1
  | n == 1    = 0
  | otherwise = n `div` head (properFactors n)
