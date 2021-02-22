module Poset.A333786 (a333786) where
import Poset.A332809 (a332809_list)
import Data.List (elemIndices)

a333786 :: Int -> Int
a333786 n = 1 + head (elemIndices n a332809_list)
