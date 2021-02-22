module Tiling.A320097 where
import Helpers.LeafFreeGrids (leafFreeGridsList)

a320097_list :: [Integer]
a320097_list = leafFreeGridsList 4

a320097 :: Int -> Integer
a320097 n = a320097_list !! (n - 1)
