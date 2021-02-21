module Tables.A268978 (a268978) where
import Data.List (genericLength)
import Helpers.Table (triangleByRows)
import Tables.A007318 (a007318_row)

a268978 :: Integral a => a -> a
a268978 i = a268978_t n k where
  (n, k) = (n' + 1, k' + 1)
  (n', k') = triangleByRows (i - 1)

a268978_t :: Integral a => a -> a -> a
a268978_t n k = genericLength $ filter divisibleByK firstNRows where
  firstNRows = concatMap a007318_row [0..n - 1]
  divisibleByK i = i `mod` k == 0
