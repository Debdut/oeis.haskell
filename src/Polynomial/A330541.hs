module Polynomial.A330541 (a330541, a330541_row, a330541T) where
import Helpers.Primes (primePowers)

a330541 :: Int -> Integer
a330541 n = a330541_list !! (n - 2)

a330541_list :: [Integer]
a330541_list = concat a330541_rows

a330541_rows :: [[Integer]]
a330541_rows = map a330541_row [2..]

a330541_row :: Int -> [Integer]
a330541_row n = map (a330541T n) [1..n-1]

a330541T :: Int -> Int -> Integer
a330541T n k = go $ gcd (2^n - 2^k) (3^n - 3^k) where
  go m = product $ map divisors $ primePowers m where
    divisors (p, d)
      | isAlwaysDivisor n k (p^d) = p^d
      | otherwise                 = divisors (p, d-1)

isAlwaysDivisor :: Int -> Int -> Integer -> Bool
isAlwaysDivisor n k c = all (\i -> (i^n - i^k) `mod` c == 0) [0..c-1]
