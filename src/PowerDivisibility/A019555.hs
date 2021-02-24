module PowerDivisibility.A019555 (a019555) where
import Helpers.Primes (primePowers)
import Data.Ratio ((%))
a019555 :: Integer -> Integer
a019555 n = f $ primePowers n where
  f = product . map g
  g (b, e) = b ^ ceiling (e % 3)
