module HelperSequences.A001414 (a001414) where
import Helpers.Primes (primeFactors)

a001414 :: Integer -> Integer
a001414 = sum . primeFactors

