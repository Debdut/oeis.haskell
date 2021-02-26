module Delahaye.A337661 (a337661_list, a337661) where
import Delahaye.A337655 (a337655)
import Helpers.Delahaye (rowTable)

a337661 :: Int -> Integer
a337661 n = a337661_list !! (n-1)

a337661_list :: [Integer]
a337661_list = rowTable (*) a337655
