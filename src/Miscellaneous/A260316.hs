module Miscellaneous.A260316 (a260316) where

a260316 :: Integral a => a -> a
a260316 n = if n `mod` 3 == 0 then n `div` 3 else n - 1
