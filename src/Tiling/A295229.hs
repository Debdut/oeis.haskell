module Tiling.A295229 (a295229) where

a295229 :: Int -> Integer
a295229 n
  | even n = (commonPart + evenPart) `div` 8
  | odd n  = (commonPart + oddPart) `div` 8 where
    commonPart = 2^(n^2) + 2 * 2^(n * (n + 1) `div` 2)
    evenPart = 3 * 2^((n^2) `div` 2) + 2 * 2^((n^2) `div` 4)
    oddPart = 2^((n^2 + 1) `div` 2)
