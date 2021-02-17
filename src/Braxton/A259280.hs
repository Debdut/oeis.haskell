module Braxton.A259280 (a259280) where
import HelperSequences.A060432 (a060432)

a259280 :: Int -> Integer
a259280 n = ceiling $ k / 2 where
  k = toRational $ n' + 1 + a060432 (n - 1) where
    n' = toInteger n
