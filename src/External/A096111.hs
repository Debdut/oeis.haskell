module External.A096111 (a096111) where
import Helpers.Subsets (oneIndexed)

a096111 :: Integer -> Integer
a096111 = product . oneIndexed . (1 +)
