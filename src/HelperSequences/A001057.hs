module HelperSequences.A001057 (a001057) where

a001057 :: Integral a => a -> Integer
a001057 n' = if even n then div n (-2) else div (n + 1) 2 where
  n = toInteger n'
