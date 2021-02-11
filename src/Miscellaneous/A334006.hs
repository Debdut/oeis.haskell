module Miscellaneous.A334006 (a334006, a334006t) where
import Miscellaneous.A337632 (a337632t)
import Miscellaneous.A337633 (a337633t)
import Helpers.Table (triangleByRows)

a334006t :: Integer -> Integer -> Int
a334006t n k = a337632t n k `div` a337633t n k

a334006 :: Integer -> Int
a334006 n = case triangleByRows (n - 1) of (n', k) -> a334006t (n' + 1) k
