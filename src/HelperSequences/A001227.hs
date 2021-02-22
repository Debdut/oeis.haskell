module HelperSequences.A001227 (a001227) where
import Helpers.Primes (divisors)

a001227 :: Integer -> Int
a001227 n
  | n `mod` 2 == 0 = a001227 (div n 2)
  | otherwise      = length $ divisors n
