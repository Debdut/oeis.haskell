module Miscellaneous.A328863 (a328863) where
import HelperSequences.A000041 (a000041)

a328863 :: Integer -> Integer
a328863 n = a000041 n + a069905 n where
  a069905 n = (n^2 + 6) `div` 12
