module IntegerTriangles.A338201 (a338201, a338201_list) where
import IntegerTriangles.A338202 (a338202_list)
import Helpers.ListHelpers (firstDifferences)

a338201 :: Int -> Int
a338201 n = a338201_list !! (n - 1)

a338201_list :: [Int]
a338201_list = 0 : firstDifferences a338202_list
