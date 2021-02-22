module HelperSequences.A000330 (a000330) where

a000330 :: Integer -> Integer
a000330 n = n * (n + 1) * (2 * n + 1) `div` 6
