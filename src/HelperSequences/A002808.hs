module HelperSequences.A002808 (a002808, a002808_list) where
import Helpers.Primes (isPrime)

a002808 :: Int -> Integer
a002808 n = a002808_list !! (n - 1)

a002808_list :: [Integer]
a002808_list = filter (not . isPrime) [4..]
