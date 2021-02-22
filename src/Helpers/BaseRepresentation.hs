module Helpers.BaseRepresentation (toBase, fromBase) where

-- toBase 16 0x123 = [3, 2, 1]
toBase :: Integral a => a -> a -> [a]
toBase _ 0 = []
toBase b n = mod n b : toBase b (div n b)

-- fromBase [3, 2, 1] 16 = 0x123
fromBase :: Integral a => a -> [a] -> a
fromBase b list = sum $ zipWith (\d e -> d * b^e) list naturals where
  naturals :: [Integer]
  naturals = [0..]

