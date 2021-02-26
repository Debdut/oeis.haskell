module Delahaye.A338016 (a338016_list, a338016) where
import Delahaye.A338012 (a338012)
import Helpers.Delahaye (rowTable)

a338016 :: Int -> Integer
a338016 n = a338016_list !! (n-1)

a338016_list :: [Integer]
a338016_list = rowTable (*) a338012
