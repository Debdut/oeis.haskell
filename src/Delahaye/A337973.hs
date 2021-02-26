module Delahaye.A337973 (a337973_list, a337973) where
import Delahaye.A337946 (a337946)
import Helpers.Delahaye (antidiagonalTable)

a337973 :: Int -> Integer
a337973 n = a337973_list !! (n-1)

a337973_list :: [Integer]
a337973_list = antidiagonalTable (+) a337946
