module Miscellaneous.A337632 (a337632, a337632t) where
import Helpers.Table (triangleByRows)

a337632t :: Integer -> Integer -> Int
a337632t n k = length $ filter (\m -> (m^k - m) `mod` n == 0) [0..n-1]

a337632 :: Integer -> Int
a337632 n = case triangleByRows (n - 1) of (n', k) -> a337632t (n' + 1) k
