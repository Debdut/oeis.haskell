module Delahaye.A338017 (a338017_list, a338017) where
import Delahaye.A338012 (a338012)
import Helpers.Delahaye (antidiagonalTable)

a338017 :: Int -> Integer
a338017 n = a338017_list !! (n-1)

a338017_list :: [Integer]
a338017_list = antidiagonalTable (*) a338012
