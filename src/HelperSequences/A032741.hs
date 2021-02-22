module HelperSequences.A032741 (a032741) where
import HelperSequences.A000005 (a000005)

a032741 :: Integer -> Integer
a032741 0 = 0
a032741 n = a000005 n - 1
