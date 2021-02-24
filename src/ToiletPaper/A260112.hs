module ToiletPaper.A260112 (a260112) where
import Data.List (genericLength)
import Helpers.BaseRepresentation (toBase)

a260112 :: Integral a => a -> a
a260112 0 = 0
a260112 n = sum k + genericLength k - 1 where
  k = toBase 4 n
