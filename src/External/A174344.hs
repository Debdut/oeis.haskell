module External.A174344 (a174344) where
import HelperSequences.A000196 (a000196)
import HelperSequences.A001057 (a001057)
import HelperSequences.A002061 (a002061)
import HelperSequences.A002522 (a002522)

a174344 :: Int -> Integer
a174344 1 = 0
a174344 n'
  | a002522 k <= n && n <= a002061 (k + 1) = a001057 k
  | odd k                                  = a001057 k - j
  | otherwise                              = a001057 k + j where
    k = a000196 (n' - 1)
    j = n - a002061 (k + 1)
    n = toInteger n'
