module Coins.A265415 (a265415) where
import Coins.A260643 (a260643_list)
import Data.List (elemIndices)

a265415 :: Int -> Int
a265415 n = a265415_list !! (n - 1)

a265415_list :: [Int]
a265415_list = map (+1) $ elemIndices 1 a260643_list
