module Delahaye.A338015 (a338015_list, a338015) where
import Delahaye.A338012 (a338012)
import Helpers.Delahaye (antidiagonalTable)

a338015 :: Int -> Integer
a338015 n = a338015_list !! (n-1)

a338015_list :: [Integer]
a338015_list = antidiagonalTable (+) a338012
