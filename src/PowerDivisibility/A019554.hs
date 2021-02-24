module PowerDivisibility.A019554 (a019554) where
import Helpers.Primes (primePowers)
import Data.Ratio ((%))
a019554 :: Integer -> Integer
a019554 n = f $ primePowers n where
  f = product . map g
  g (b, e) = b ^ ceiling (e % 2)
