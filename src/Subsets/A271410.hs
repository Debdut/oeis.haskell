module Subsets.A271410 (a271410) where
import Helpers.Subsets (oneIndexed)

a271410 :: Integer -> Integer
a271410 = foldr lcm 1 . oneIndexed
