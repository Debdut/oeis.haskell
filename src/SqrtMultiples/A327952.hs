module SqrtMultiples.A327952 (a327952, a327952_list) where
import SqrtMultiples.A327953 (a327953)

a327952 :: Integer -> Integer
a327952 n = a327953 n + 2*n

a327952_list :: [Integer]
a327952_list = map a327952 [1..]
