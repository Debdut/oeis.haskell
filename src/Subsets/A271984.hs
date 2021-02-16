module Subsets.A271984 (a271984) where
import HelperSequences.A116417 (a116417)
import Subsets.A271410 (a271410)

a271984 :: Int -> Integer
a271984 = (a271984_list !!)

a271984_list :: [Integer]
a271984_list = filter (\n -> a116417 n /= a271410 n) [0..]
