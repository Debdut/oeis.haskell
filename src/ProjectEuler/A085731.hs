module ProjectEuler.A085731 (a085731) where
import HelperSequences.A003415 (a003415)

a085731 :: Integer -> Integer
a085731 n = gcd n $ a003415 n
