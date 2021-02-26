module Minecraft.A328423 (a328423, a328423_list) where
import Minecraft.A328422 (a328422_list)

a328423 :: Int -> Integer
a328423 n = a328423_list !! (n - 1)

a328423_list :: [Integer]
a328423_list = recurse a328422_list where
  recurse (a : _ : as) = a : recurse as
