module HelperSequences.A000005 (a000005) where
import Helpers.Primes (primePowers)

a000005 :: Integer -> Integer
a000005 n = product $ map ((+1) . fromIntegral . snd) $ primePowers n
