module Minecraft.A328446 (a328446, a328446_list, a328446_row) where
import Math.NumberTheory.Powers (integerRoot)

a328446 :: Int -> Int
a328446 n = a328446_list !! (n - 1)

a328446_list :: [Int]
a328446_list = concatMap a328446_row [1..]

a328446_row :: Int -> [Int]
a328446_row 0 = []
a328446_row 1 = [0]
a328446_row 2 = [1]
a328446_row n
  | even n = recurse [n `div` 2, n - 1] 2
  | odd n = recurse [n - 1] 2 where
  recurse c k
    | m == 1 = c
    | n == m + m^k = recurse (m:c) (k+1)
    | otherwise    = recurse c (k+1) where
      m = integerRoot k n
