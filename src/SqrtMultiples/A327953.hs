module SqrtMultiples.A327953 (a327953, a327953_list) where
import Data.List (genericLength)

a327953 :: Integer -> Integer
a327953 n = genericLength $ recurse 2 ((n+1)^2 `div` 4) where
  recurse m k
    | k < 1            = []
    | m^2 * k <= n^2   = recurse (m + 1) k
    | m^2 * k >= upper = recurse m ((upper-1) `div` m^2)
    | otherwise        = (m, k) : recurse m (k - 1) where
      upper = (n+1)^2

a327953_list :: [Integer]
a327953_list = map a327953 [1..]
