module Anagram.A280164 (a280164, a280164_list) where
import Helpers.AnagramHelper (knIsBaseBAnagramOfN)

a280164 :: Int -> Int
a280164 n = a280164_list !! (n - 1)

a280164_list :: [Int]
a280164_list = map countAnagramMultiples [1..]

countAnagramMultiples :: Integer -> Int
countAnagramMultiples n = length $ filter (knIsBaseBAnagramOfN n) choices where
  choices = [(b, k) | b <- [2..n-2], k <- [2..b - 1]]
