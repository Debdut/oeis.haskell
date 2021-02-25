module HypercubeColorings.A333418 (a333418) where
import Helpers.HypercubeColorings (countColorings)

a333418_row :: Int -> [Int]
a333418_row n = map (a333418T n) [0..n*2^(n-1)]

a333418T :: Int -> Int -> Int
a333418T n = countColorings n 1

a333418_list :: [Int]
a333418_list = concatMap a333418_row [1..]

a333418 :: Int -> Int
a333418 n = a333418_list !! (n - 1)
