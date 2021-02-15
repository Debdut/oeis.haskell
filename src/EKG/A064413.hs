module EKG.A064413 (a064413, a064413_list) where
import Data.List (find, delete)
import Data.Maybe (fromJust)

a064413 :: Int -> Integer
a064413 n = a064413_list !! (n - 1)

a064413_list :: [Integer]
a064413_list = 1 : 2 : remaining 2 [3..] where
  remaining k l = k' : remaining k' (delete k' l) where
    k' = fromJust $ find ((1 /=) . gcd k) l
