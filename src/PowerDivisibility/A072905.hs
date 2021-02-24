module PowerDivisibility.A072905 (a072905) where
import HelperSequences.A000188 (a000188)
import HelperSequences.A007913 (a007913)

a072905 :: Integer -> Integer
a072905 n = a007913 n * (a000188 n + 1)^2
