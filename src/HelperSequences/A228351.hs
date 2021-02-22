module HelperSequences.A228351 (a228351, a228351_row) where
import HelperSequences.A001511 (a001511)

a228351 :: Int -> Int
a228351 n = a228351_list !! (n - 1)

a228351_list :: [Int]
a228351_list = concatMap a228351_row [1..]

a228351_row :: Int -> [Int]
a228351_row 0 = []
a228351_row n = a001511 n : a228351_row (n `div` 2^a001511 n)
