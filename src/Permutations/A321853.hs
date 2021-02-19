module Permutations.A321853 (a321853) where

a321853 :: Int -> Integer
a321853 n = sum $ map f [1..n'-1] where
  n' = fromIntegral n
  f k = (n' - k) * k * nFactorial `div` (k + 1)
  nFactorial = product [1..n']
