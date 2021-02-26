module Delahaye.A338032 (a338032_list, a338032) where
import Delahaye.A337656 (a337656)
import Helpers.Delahaye (antidiagonalTable)

a338032 :: Int -> Integer
a338032 n = a338032_list !! (n-1)

a338032_list :: [Integer]
a338032_list = antidiagonalTable (+) a337656
