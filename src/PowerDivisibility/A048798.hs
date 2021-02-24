module PowerDivisibility.A048798 (a048798) where
import Helpers.Primes (primePowers)

a048798 :: Integer -> Integer
a048798 n = f $ primePowers n where
  f = product . map (\(a, b) -> a ^ mod (-b) 3)
