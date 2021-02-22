module Tiling.A329185 where
import Data.List (unfoldr)

a329185_list :: [Integer]
a329185_list = 1 : 1 : 2 : 5 : 10 : unfoldr f (1,1,2,5,10) where
  f (a5, a4, a3, a2, a1) = Just (a0, (a4, a3, a2, a1, a0)) where
    a0 = 2*a1 - a2 + 3*a3 - a4 + 2*a5

a329185 :: Int -> Integer
a329185 = (!!) a329185_list
