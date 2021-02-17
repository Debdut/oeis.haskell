module Braxton.A274701 (a274701) where
import Braxton.A259280 (a259280)
import Helpers.ListHelpers (firstDifferences)

a274701 :: Int -> Integer
a274701 n = a274701_list !! (n - 1)

a274701_list :: [Integer]
a274701_list = firstDifferences $ map a259280 [1..]
