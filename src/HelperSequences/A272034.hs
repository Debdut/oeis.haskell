module HelperSequences.A272034 (a272034, a272034_list) where
import HelperSequences.A116416 (a116416)

a272034 :: Int -> Integer
a272034 = (a272034_list !!)

a272034_list :: [Integer]
a272034_list = filter (\n -> a116416 n == 1) [0..]
