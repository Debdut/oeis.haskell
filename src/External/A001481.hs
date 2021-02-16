module External.A001481 (a001481) where
import Helpers.PolygonSizes (a001481_pairs)

a001481_list :: [Integer]
a001481_list = map reconstitute a001481_pairs where
  reconstitute ((a,b):_) = a^2 + b^2

a001481 :: Int -> Integer
a001481 n = a001481_list !! (n - 1)
