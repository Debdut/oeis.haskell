module PolygonSizes.A328787 (a328787) where
import Data.Set (size)
import Helpers.PolygonSizes (triangleSizes)

a328787_list :: [Int]
a328787_list = map size triangleSizes

a328787 :: Int -> Int
a328787 n = a328787_list !! (n - 2)
