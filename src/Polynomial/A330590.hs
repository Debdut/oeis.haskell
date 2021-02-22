module Polynomial.A330590 (a330590) where
import HelperSequences.A000005 (a000005)
import Polynomial.A330541 (a330541T)

a330590T :: Int -> Int -> Integer
a330590T n k = a000005 $ a330541T n k

a330590_row :: Int -> [Integer]
a330590_row n = map (a330590T n) [1..n-1]

a330590_rows :: [[Integer]]
a330590_rows = map a330590_row [2..]

a330590_list :: [Integer]
a330590_list = concat a330590_rows

a330590 :: Int -> Integer
a330590 n = a330590_list !! (n - 2)
