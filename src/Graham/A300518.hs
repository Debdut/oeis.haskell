module Graham.A300518 (a300518) where
import HelperSequences.A006530 (a006530)
import HelperSequences.A007913 (a007913)

a300518 :: Integer -> Integer
a300518 = a006530 . a007913
