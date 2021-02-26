module Delahaye.A338033 (a338033_list, a338033) where
import Delahaye.A337656 (a337656)
import Helpers.Delahaye (rowTable)

a338033 :: Int -> Integer
a338033 n = a338033_list !! (n-1)

a338033_list :: [Integer]
a338033_list = rowTable (*) a337656
