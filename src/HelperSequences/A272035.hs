module HelperSequences.A272035 (a272035, a272035_list) where
import HelperSequences.A116417 (a116417)

a272035 :: Int -> Integer
a272035 = (a272035_list !!)

a272035_list :: [Integer]
a272035_list = filter (\n -> a116417 n == 1) [0..]
