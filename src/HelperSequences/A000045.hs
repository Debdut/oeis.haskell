module HelperSequences.A000045 (a000045, a000045_list) where

a000045 :: Int -> Integer
a000045 = (a000045_list !!)

a000045_list :: [Integer]
a000045_list = 0 : 1 : remainder 0 1 where
  remainder a b = a + b : remainder b (a + b)
