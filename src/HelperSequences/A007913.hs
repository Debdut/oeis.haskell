module HelperSequences.A007913 (a007913) where
import Helpers.Primes (primePowers)

a007913 :: Integer -> Integer
a007913 n = f $ primePowers n where
  f = product . map (\(a, b) -> a ^ mod (-b) 2)
