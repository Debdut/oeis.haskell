module PolygonSizes.A328801 (a328801, a328801_list) where
import PolygonSizes.A328803 (a328803_list)

a328801_list :: [Integer]
a328801_list = tail $ map (+1) a328803_list

a328801 :: Int -> Integer
a328801 n = a328801_list !! (n - 2)
