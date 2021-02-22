module Helpers.Primes (primeFactors, primePowers, distinctPrimeFactors, isPrime, properFactors, divisors) where
import Data.List (group, nub, sort)
import Control.Arrow ((&&&))
import HelperSequences.A000040 (a000040_list)
import HelperSequences.A238689 (a238689_row)
-- Taken from
-- http://stackoverflow.com/questions/21276844/prime-factors-in-haskell
-- will write my own implementation later (fingers crossed!)

isPrime :: Integral a => a -> Bool
isPrime n = n' `elem` takeWhile (<= n') a000040_list where
  n' = fromIntegral n

primeFactors :: Integer -> [Integer]
primeFactors 1 = []
primeFactors n = a238689_row n

-- Taken from
-- http://stackoverflow.com/questions/13517114/count-frequency-of-each-element-in-a-list
-- will write my own implementation later (fingers crossed!)
primePowers :: Integer -> [(Integer, Int)]
primePowers = map (head &&& length) . group . sort . primeFactors

distinctPrimeFactors :: Integer -> [Integer]
distinctPrimeFactors = nub . primeFactors

properFactors :: Integer -> [Integer]
properFactors = drop 1 . properDivisors

-- This returns proper divisors in order (e.g. factors 12 = 1, 2, 3, 4, 6)
properDivisors :: Integer -> [Integer]
properDivisors n = recurse [1] $ primePowers n where
  recurse accum [] = init $ sort accum
  recurse accum ((p, k) : remaining) = recurse nextGeneration remaining where
    nextGeneration = accum ++ concatMap new a
    new d = map (d*) accum
    a = map (p^) [1..k]

a027751_row :: Integer -> [Integer]
a027751_row 1 = [1] -- by convention
a027751_row n = properDivisors n

-- This returns divisors in order (e.g. divisors 12 = 1, 2, 3, 4, 6, 12)
divisors :: Integer -> [Integer]
divisors n = properDivisors n ++ [n]
