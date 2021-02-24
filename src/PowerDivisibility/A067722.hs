module PowerDivisibility.A067722 (a067722) where
import PowerDivisibility.A072905 (a072905)

a067722 :: Integer -> Integer
a067722 0 = 1
a067722 n = a072905 n - n
