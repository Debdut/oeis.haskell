module Braxton.A282165 (a282165) where
import HelperSequences.A061017 (a061017_list)

a282165 :: Int -> Integer
a282165 n = a282165_list !! (n - 1)

a282165_list :: [Integer]
a282165_list = scanl1 (*) a061017_list
