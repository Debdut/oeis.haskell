module HelperSequences.A061017 (a061017, a061017_list) where
import Helpers.Primes (divisors)

a061017 :: Int -> Integer
a061017 n = a061017_list !! (n - 1)

a061017_list :: [Integer]
a061017_list = r 1 where
  r k = replicate (length $ divisors k) k ++ r (k + 1)
