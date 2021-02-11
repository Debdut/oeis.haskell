module Miscellaneous.A275673 (a275673) where

a275673 :: Int -> Integer
a275673 n = a275673_list !! (n - 1)

a275673_list :: [Integer]
a275673_list = scanl (+) 1 $ concatMap (replicate 6) [1..]
