module External.A064894 (a064894) where
import Helpers.Subsets (zeroIndexed)

a064894 :: Integer -> Integer
a064894 = foldr gcd 0 . zeroIndexed
