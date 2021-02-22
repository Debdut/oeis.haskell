module Poset.A334238 (a334238) where
import Poset.A334184 (a334184_row)

a334238_list :: [Integer]
a334238_list = filter (not . isUnimodal . a334184_row) [1..]

a334238 :: Int -> Integer
a334238 n = a334238_list !! (n - 1)

isUnimodal :: [Int] -> Bool
isUnimodal l = null $ dropWhile (uncurry (>=)) $ dropWhile (uncurry (<=)) $ zip l (tail l)
