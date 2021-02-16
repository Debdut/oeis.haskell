module Subsets.A272011 (a272011) where
import Helpers.Subsets (zeroIndexed)

a272011 :: Int -> Integer
a272011 = (!!) a272011_list

a272011_list :: [Integer]
a272011_list = list 0 where
  list n = zeroIndexed n ++ list (n + 1)
