module Tiling.A301976 where
import Helpers.LeafFreeGrids (leafFreeGridsList)

a301976_list :: [Integer]
a301976_list = leafFreeGridsList 3

a301976 :: Int -> Integer
a301976 n = a301976_list !! (n - 1)
