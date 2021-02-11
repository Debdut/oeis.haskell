module Miscellaneous.A271439 (a271439) where
import HelperSequences.A000217 (a000217_list)
import HelperSequences.A002024 (a002024)

a271439 :: Integral a => a -> a
a271439 0 = 0
a271439 n = if isTriangular then 0 else n - a002024 n + 1 where
  isTriangular = n == last (takeWhile (<= n) a000217_list)
