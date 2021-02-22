module Polynomial.A330542 (a330542) where
import Polynomial.A330541 (a330541_row)

a330542 :: Int -> Integer
a330542 n = maximum $ a330541_row n

a330542_list :: [Integer]
a330542_list = map a330542 [2..]
