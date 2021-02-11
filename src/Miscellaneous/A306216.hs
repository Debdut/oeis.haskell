module Miscellaneous.A306216 (a306216) where
import Data.List (unfoldr)
-- Successive concatenation of the current sequence with the first differences
-- of the sequence, a(1) = a(2) = 1.

a306216_list :: [Int]
a306216_list = 1 : 1 : concat (unfoldr nextGeneration [1,1]) where
  nextGeneration l = Just (diff l, l ++ diff l)
  diff xs =  zipWith subtract xs (tail xs)

a306216 :: Int -> Int
a306216 n = a306216_list !! (n-1)

-- Another variant: 
-- import Data.List (unfoldr)
--
-- weaklyDecreasing :: [Int] -> [Int]
-- weaklyDecreasing [] = []
-- weaklyDecreasing (n:ns) = recurse 1 n ns where
--   recurse c m [] = [c]
--   recurse c m (k:ks)
--     | k <= m    = recurse (c+1) k ks
--     | otherwise = c : recurse 1 k ks
--
-- a999999_list = 1 : concat (unfoldr nextGeneration [1]) where
--   nextGeneration l = Just (weaklyDecreasing l, l ++ weaklyDecreasing l)
