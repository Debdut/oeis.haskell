module HypercubeColorings.A333362 (a333362) where
import Helpers.HypercubeColorings (countPolyforms)

a333362 :: Int -> Int
a333362 n = countPolyforms n 1 n
