module Delahaye.A338034 (a338034_list, a338034) where
import Delahaye.A337656 (a337656)
import Helpers.Delahaye (antidiagonalTable)

a338034 :: Int -> Integer
a338034 n = a338034_list !! (n-1)

a338034_list :: [Integer]
a338034_list = antidiagonalTable (*) a337656
