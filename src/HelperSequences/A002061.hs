module HelperSequences.A002061 (a002061) where

a002061 :: Integral a => a -> Integer
a002061 n' = n^2 - n + 1 where
  n = toInteger n'
