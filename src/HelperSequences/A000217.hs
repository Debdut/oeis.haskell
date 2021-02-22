module HelperSequences.A000217 (a000217, a000217_list) where

a000217 :: Integral a => a -> a
a000217 n = n * (n + 1) `div` 2

a000217_list :: Integral a => [a]
a000217_list = map a000217 [0..]
