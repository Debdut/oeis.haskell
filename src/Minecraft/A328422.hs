module Minecraft.A328422 (a328422, a328422_list) where
import Minecraft.A328446 (a328446_row)

a328422 :: Int -> Integer
a328422 n = a328422_list !! (n - 2)

a328422_list :: [Integer]
a328422_list = 1 : recurse 3 where
  recurse n = sum (map a328422 $ a328446_row n) : recurse (n + 1)
