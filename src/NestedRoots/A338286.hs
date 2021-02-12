module NestedRoots.A338286 (a338286) where
import Math.NumberTheory.Powers.Squares (integerSquareRoot')
import NestedRoots.A338268 (a338268_t)

a338286 :: Integer -> Integer
a338286 n = a338268_t (k^2 + 2 * n) k where
  k = 2 + integerSquareRoot' ((1 + integerSquareRoot' (1 + 8 * n)) `div` 2)

-- Upper bound for A338271
-- u n
--   | even n    = map (\i -> a338286 ((n - 4*i^2) `div` 2)) [1..integerSquareRoot' n `div` 2]
--   | otherwise = map (\i -> a338286 ((n - 4*i^2 - 4*i - 1) `div` 2)) [1..(integerSquareRoot' n - 1) `div` 2]
