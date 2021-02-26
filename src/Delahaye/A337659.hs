module Delahaye.A337659 (a337659_list, a337659) where
import Delahaye.A337655 (a337655)
import Helpers.Delahaye (rowTable)

a337659 :: Int -> Integer
a337659 n = a337659_list !! (n-1)

a337659_list :: [Integer]
a337659_list = rowTable (+) a337655
