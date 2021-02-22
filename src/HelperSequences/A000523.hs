module HelperSequences.A000523 (a000523) where

a000523 :: Integer -> Integer
a000523 1 = 0
a000523 n = 1 + a000523 (div n 2)
