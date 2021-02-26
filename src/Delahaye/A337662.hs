module Delahaye.A337662 (a337662_list, a337662) where
import Delahaye.A337655 (a337655)
import Helpers.Delahaye (antidiagonalTable)

a337662 :: Int -> Integer
a337662 n = a337662_list !! (n-1)

a337662_list :: [Integer]
a337662_list = antidiagonalTable (*) a337655
