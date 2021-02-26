module Delahaye.A338014 (a338014_list, a338014) where
import Delahaye.A338012 (a338012)
import Helpers.Delahaye (rowTable)

a338014 :: Int -> Integer
a338014 n = a338014_list !! (n-1)

a338014_list :: [Integer]
a338014_list = rowTable (+) a338012
