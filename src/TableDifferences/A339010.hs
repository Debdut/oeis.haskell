module TableDifferences.A339010 (a339010) where
import Helpers.Primes (divisors)
import HelperSequences.A001227 (a001227)

a339010 :: Integer -> Int
a339010 n = sum $ map a001227 $ takeWhile (<= n `div` 3) $ divisors n

-- Alternatively
-- centeredTable :: [[Int]]
-- centeredTable = map (\k -> map (\n -> k * n * (n+1) `div` 2 + 1) [0..]) [3..]

-- -- a999999 :: Int -> Int
-- a999999 n = sum $ map (differenceCount n) table where
--   table = takeWhile (\r -> r !! 1 <= n + 1) centeredTable
