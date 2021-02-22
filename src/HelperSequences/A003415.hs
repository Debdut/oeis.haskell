module HelperSequences.A003415 (a003415) where
import Helpers.Primes (isPrime)
import Data.Maybe (fromJust)
import Data.List (find)

a003415 :: Integer -> Integer
a003415 n
  | n <= 1    = 0
  | isPrime n = 1
  | otherwise = a * a003415 b + b * a003415 a where
    a = fromJust $ find (\d -> n `mod` d == 0) [2..]
    b = n `div` a
