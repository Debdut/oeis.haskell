module Delahaye.A337975 (a337975_list, a337975) where
import Delahaye.A337946 (a337946)
import Helpers.Delahaye (antidiagonalTable)

a337975 :: Int -> Integer
a337975 n = a337975_list !! (n-1)

a337975_list :: [Integer]
a337975_list = antidiagonalTable (*) a337946
