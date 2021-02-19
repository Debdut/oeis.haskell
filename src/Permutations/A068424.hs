module Permutations.A068424 (a068424, a068424T) where

a068424T :: Integer -> Integer -> Integer
a068424T n k
  | n < k     = 0
  | otherwise = product $ map (\i -> n - i) [0..k-1]

a068424_row :: Integer -> [Integer]
a068424_row n = map (a068424T n) [1..n]

a068424_list :: [Integer]
a068424_list = concatMap a068424_row [1..]

a068424 :: Int -> Integer
a068424 n = a068424_list !! (n - 1)
