module External.A274923 (a274923) where
import HelperSequences.A001057 (a001057)
import HelperSequences.A002061 (a002061)
import HelperSequences.A002522 (a002522)
import HelperSequences.A003059 (a003059)

a274923 :: Int -> Integer
a274923 1 = 0
a274923 n'
  | a002061 k <= n && n <= a002522 k = a001057 (k - 1)
  | even k                           = a001057 (k - 2) + j
  | otherwise                        = a001057 (k - 2) - j where
    k = a003059 (n' - 1)
    j = n - a002522 (k - 1)
    n = toInteger n'
