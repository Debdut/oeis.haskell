module Coins.A263135 (derivative, a263135) where
import Helpers.ListHelpers (concatReplicate)

a263135 :: Int -> Integer
a263135 n = a263135_list !! n

a263135_list :: [Integer]
a263135_list = [0,0,1,2,3,4] ++ list where
  list = scanl (+) 6 $ concatMap f derivative where
    f k = replicate k 1 ++ [2]

derivative :: [Int]
derivative = [3, 2, 2, 2] ++ remainder 0

remainder :: Int -> [Int]
remainder n = sideA ++ sideB ++ sides ++ remainder (n + 1) where
  sideA = 2 : replicate (n + 1) 1
  sideB = 2 : replicate n 1
  sides = concatReplicate 4 sideA
