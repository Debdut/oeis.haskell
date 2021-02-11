module Miscellaneous.A309978 (a309978) where
import Math.NumberTheory.Powers (integerRoot)
-- a n = recurse 0

a309978 1 = 0
a309978 2 = 1
a309978 n
  | even n = recurse 2 2
  | odd n = recurse 1 2 where
  recurse c k
    | m == 1 = c
    | n == m + m^k = recurse (c+1) (k+1)
    | otherwise    = recurse c (k+1) where
      m = integerRoot k n
