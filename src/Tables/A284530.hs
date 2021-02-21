module Tables.A284530 (a284530, a284530_list) where
import Tables.A284486 (a284486_list)
import Data.List (elemIndices)

a284530_list :: [Int]
a284530_list = map (+1) $ elemIndices 1 a284486_list

a284530 :: Int -> Int
a284530 n = a284530_list !! (n - 1)
