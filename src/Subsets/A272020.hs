module Subsets.A272020 (a272020) where
import Subsets.A272011 (a272011)

a272020 :: Int -> Integer
a272020 = (1 +) . a272011
