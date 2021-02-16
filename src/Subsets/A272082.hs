module Subsets.A272082 (a272082) where
import HelperSequences.A272035 (a272035_list)
import Helpers.Subsets (oneIndexed)

a272082 :: Int -> Integer
a272082 = (a272082_list !!)

a272082_list :: [Integer]
a272082_list = concatMap oneIndexed a272035_list
