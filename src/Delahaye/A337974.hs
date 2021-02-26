module Delahaye.A337974 (a337974_list, a337974) where
import Delahaye.A337946 (a337946)
import Helpers.Delahaye (rowTable)

a337974 :: Int -> Integer
a337974 n = a337974_list !! (n-1)

a337974_list :: [Integer]
a337974_list = rowTable (*) a337946
