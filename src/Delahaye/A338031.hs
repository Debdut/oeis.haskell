module Delahaye.A338031 (a338031_list, a338031) where
import Delahaye.A337656 (a337656)
import Helpers.Delahaye (rowTable)

a338031 :: Int -> Integer
a338031 n = a338031_list !! (n-1)

a338031_list :: [Integer]
a338031_list = rowTable (+) a337656
