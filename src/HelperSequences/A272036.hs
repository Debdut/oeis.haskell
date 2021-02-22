module HelperSequences.A272036 (a272036, a272036_list) where
import HelperSequences.A116416 (a116416)
import HelperSequences.A116417 (a116417)

a272036 :: Int -> Integer
a272036 = (a272036_list !!)

a272036_list :: [Integer]
a272036_list = filter (\n -> a116416 n == a116417 n) [0..]
