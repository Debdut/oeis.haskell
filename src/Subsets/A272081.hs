module Subsets.A272081 (a272081) where
import HelperSequences.A272034 (a272034_list)
import Helpers.Subsets (oneIndexed)

a272081 :: Int -> Integer
a272081 = (a272081_list !!)

a272081_list :: [Integer]
a272081_list = concatMap oneIndexed a272034_list
