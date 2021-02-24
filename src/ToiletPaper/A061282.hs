module ToiletPaper.A061282 (a061282) where
import Data.List (genericLength)
import Helpers.BaseRepresentation (toBase)

a061282 :: Integral a => a -> a
a061282 0 = 0
a061282 n = sum k + genericLength k - 1 where
  k = toBase 3 n
