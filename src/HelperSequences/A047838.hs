module HelperSequences.A047838 (a047838) where

a047838 :: Int -> Integer
a047838 n = m * m `div` 2 - 1 where
  m = toInteger n
