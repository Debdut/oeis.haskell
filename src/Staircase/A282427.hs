module Staircase.A282427 (a282427) where
import Staircase.A282443 (a282443)

a282427 :: Int -> Int
a282427 n = a282427_list !! (n- 1)

a282427_list :: [Int]
a282427_list = map fst $ filter valid $ zip [1..] $ map a282443 [1..] where
  valid (n, a_n) = (n + 1) `div` 2  == a282443 n
