module HelperSequences.A001511 (a001511) where

-- Walt Rorie-Baety, Mar 22 2013 (OEIS)
a001511 :: Integral a => a -> a
a001511 n
  | odd n     = 1
  | otherwise = 1 + a001511 (n `div` 2)
