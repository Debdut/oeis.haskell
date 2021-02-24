module PowerDivisibility.A254734 (a254734) where
import Data.Maybe (fromJust)
import Data.List (find)

a254734 :: Integer -> Integer
a254734 n = fromJust $ find d [n + 1..] where
  d k = k^4 `mod` n == 0
