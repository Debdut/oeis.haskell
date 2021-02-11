module Miscellaneous.A337633 (a337633, a337633t) where
import Helpers.Table (triangleByRows)
a337633t :: Integer -> Integer -> Int
a337633t n k = length $ filter (\m -> (m^k + m) `mod` n == 0) [0..n-1]

a337633 :: Integer -> Int
a337633 n = case triangleByRows (n - 1) of (n', k) -> a337633t (n' + 1) k
