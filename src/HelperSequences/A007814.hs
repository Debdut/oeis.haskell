module HelperSequences.A007814 (a007814) where

a007814 n = last $ takeWhile (\a -> n `mod` 2^a == 0) [0..]
