module AlecSequences.A271471 (a271471) where
import AlecSequences.A271468 (a271468, a271468_list)
import Data.Maybe (fromJust)
import Data.List (find)

a271471 :: Int -> Integer
a271471 n = a271471_list !! (n - 1)

a271471_list = f $ tail a271468_list where
  f (a:as) = a : f (filter (\i -> i `mod` a /= 0) as)
