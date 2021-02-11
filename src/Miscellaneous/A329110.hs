module Miscellaneous.A329110 (a329110, a329110_list) where
import HelperSequences.A067824 (a067824, a067824_list)

a329110 :: Int -> Integer
a329110 n = a329110_list !! (n-1)

a329110_list :: [Integer]
a329110_list = scanl1 (+) a067824_list
