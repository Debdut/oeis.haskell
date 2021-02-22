module HelperSequences.A000010 (a000010) where
import Data.List (genericLength)

-- inspired by Allan C. Wechsler, Dec 29 2014 (OEIS)
a000010 :: Integral a => a -> a
a000010 n = genericLength $ filter ((1 ==) . gcd n) [1..n]
