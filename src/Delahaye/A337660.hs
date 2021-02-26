module Delahaye.A337660 (a337660_list, a337660) where
import Delahaye.A337655 (a337655)
import Helpers.Delahaye (antidiagonalTable)

a337660 :: Int -> Integer
a337660 n = a337660_list !! (n-1)

a337660_list :: [Integer]
a337660_list = antidiagonalTable (+) a337655
