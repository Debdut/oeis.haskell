module HelperSequences.A117818 (a117818) where
import Helpers.Primes (primePowers)

a117818 1 = 1
a117818 n = fromPrimePowers $ primePowers n where
  fromPrimePowers [(p, 1)] = p
  fromPrimePowers factorization = n `div` minimum (map fst factorization)
