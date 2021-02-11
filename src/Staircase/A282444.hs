module Staircase.A282444 (a282444) where
import Staircase.A282443 (a282443)

a282444 :: Int -> Int
a282444 n = a282444_list !! (n- 1)

a282444_list :: [Int]
a282444_list = map fst $ filter valid $ zip [1..] $ map a282443 [1..] where
  valid (n, a_n) = n == a282443 n
