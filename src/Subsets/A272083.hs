module Subsets.A272083 (a272083) where
import HelperSequences.A272036 (a272036_list)
import Helpers.Subsets (oneIndexed)

a272083 :: Int -> Integer
a272083 = (a272083_list !!)

a272083_list :: [Integer]
a272083_list = concatMap oneIndexed a272036_list
