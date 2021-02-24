module PowerDivisibility.A254767 (a254767) where
import PowerDivisibility.A048798 (a048798)
import Data.Maybe (fromJust)
import Data.List (find)

a254767 :: Integer -> Integer
a254767 n = k * fromJust (find (\j -> n < k * j) cubes) where
  k = a048798 n
  cubes = map (^3) [1..]
