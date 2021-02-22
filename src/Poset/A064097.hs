module Poset.A064097 (a064097) where
import Data.MemoCombinators (integral)
import Helpers.Primes (primeFactors)

a064097 :: Integer -> Integer
a064097 = integral a064097' where
  a064097' 1 = 0
  a064097' n = 1 + a064097 (n - (n `div` head (primeFactors n)))
