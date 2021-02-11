module Miscellaneous.A268038 (a268038) where
import HelperSequences.A000196 (a000196)
import HelperSequences.A001057 (a001057)
import HelperSequences.A002061 (a002061)
import HelperSequences.A002522 (a002522)
import HelperSequences.A003059 (a003059)

a268038 :: Int -> Integer
a268038 1 = 0
a268038 n'
  | a002061 k <= n && n <= a002522 k = -a001057 (k - 1)
  | odd k                            = j - h
  | otherwise                        = -j - h where
    k = a003059 (n' - 1)
    j = n - a002522 (k - 1)
    h = a001057 (k - 2)
    n = toInteger n'
