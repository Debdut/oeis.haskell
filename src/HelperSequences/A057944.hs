module HelperSequences.A057944 (a057944) where
import HelperSequences.A000217 (a000217)

-- This can be computed with less complexity via:
-- a057944 n = k where
-- k = floor((sqrt(1 + 8 * n) - 1)/2)

a057944 :: Integer -> Integer
a057944 n = last $ takeWhile (n >=) (map a000217 [0..])
