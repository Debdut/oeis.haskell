module Staircase.A282434 (a282434) where
import Helpers.Records (maxIndices)
import Staircase.A282442 (a282442)

a282434 :: Int -> Int
a282434 n = a282434_list !! (n - 1)

a282434_list :: [Int]
a282434_list = map (+1) $ maxIndices $ map a282442 [1..]
