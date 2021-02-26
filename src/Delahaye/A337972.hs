module Delahaye.A337972 (a337972_list, a337972) where
import Delahaye.A337946 (a337946)
import Helpers.Delahaye (rowTable)

a337972 :: Int -> Integer
a337972 n = a337972_list !! (n-1)

a337972_list :: [Integer]
a337972_list = rowTable (+) a337946
