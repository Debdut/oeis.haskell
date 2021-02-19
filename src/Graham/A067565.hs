module Graham.A067565 (a067565, a067565_list) where
import Graham.A006255 (a006255_list)
import Helpers.Primes (isPrime)
import Data.List (elemIndex)
import Data.Maybe (fromJust)
-- A067565 Inverse of Ron Graham's sequence (A006255), or zero if and only if n is a prime.

a067565 :: Integer -> Integer
a067565 n
  | isPrime n = 0
  | otherwise = (1+) $ fromIntegral $ fromJust $ elemIndex n a006255_list

a067565_list :: [Integer]
a067565_list = map a067565 [1..]
