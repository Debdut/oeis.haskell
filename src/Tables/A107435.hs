module Tables.A107435 (a107435) where
import Helpers.Table (triangleByRows)

a107435 :: Int -> Integer
a107435 i = euclid 0 (n' + 1, k' + 1) where
  euclid c (_, 0) = c
  euclid c (a, b) = euclid (c + 1) (b, a `mod` b)
  (n', k') = triangleByRows (i - 1)
