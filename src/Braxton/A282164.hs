module Braxton.A282164 (a282164) where
import Braxton.A282165 (a282165)
import Helpers.Primes (primePowers)
import HelperSequences.A003059 (a003059)
import HelperSequences.A000196 (a000196)
import HelperSequences.A061017 (a061017)
-- Comment: Consider all length (n + 1) sub-sequences of A061017 with square products.
-- a(n) gives the minimum square root of any such sequence.

a282164 :: Int -> Integer
a282164 1 = 1
a282164 n = if isSquare partialProduct then greedyAlgorithm else otherAlgorithm where
  partialProduct = a282165 (n - 1)
  greedyAlgorithm = unsafeIntegerSqrt partialProduct
  otherAlgorithm = min s1 s2 where
    s1 = (a282164 (n + 1) `div` a061017 (n - 1)) * rootCeil (a061017 (n - 1))
    s2 = a282164 (n + 1) `div` rootFloor (a061017 (n - 1))

rootCeil :: Integer -> Integer
rootCeil n = fromIntegral $ a003059 $ fromIntegral n

rootFloor :: Integer -> Integer
rootFloor n = fromIntegral $ a000196 n

isSquare :: Integer -> Bool
isSquare n = all (\(_, k) -> k `mod` 2 == 0) $ primePowers n

unsafeIntegerSqrt :: Integer -> Integer
unsafeIntegerSqrt n = product $ map takeRoot $ primePowers n where
  takeRoot (d, k)
    | k `mod` 2 == 0 = d^(k `div` 2)
    | otherwise      = error ("Not a square: " ++ show n)

------------------
-- I can prove that a(n) is the square root least sub-sequence of A061017 of length n such that
-- the product of the subsequence is square.

-- Can I prove a lower bound on this function?
------------------

--foldl 1 (\(d, k) -> (d^k)*)
-- (1, 1)
-- (1, 2), (2, 1)
-- (1, 3), (3, 1)
-- (1, 4), (2, 2), (4, 1)
-- (1, 5), (5, 1)
-- (1, 6), (2, 3), (3, 2), (6, 1)
-- (1, 7), (7, 1)
-- (1, 8), (2, 4), (4, 2), (8, 1)
-- (1, 9), (3, 3), (9, 1)
-- (1,10), (2, 5), (5, 2), (10,1)


-- 1, 2, 4, 12, 36, 144, 576, 2304

-- a282165 = partial products of A061017
-- If greedy algorithm applies, take sqrt(A99999(n - 1))
-- a282165(1) = 1
-- a282165(2) = 2
-- a282165(3) = 4
-- a282165(4) = 12
-- a282165(5) = 36
-- a282165(6) = 144
-- a282165(7) = 576
-- a282165(8) = 2304
-- a282165(9) = 11520

-- a282164(1) = 1
-- a282164(2) = 1  = sqrt(a282165(1))
-- a282164(3) = 2
-- a282164(4) = 2  = sqrt(a282165(3))
-- a282164(5) = 4
-- a282164(6) = 6  = sqrt(a282165(5))
-- a282164(7) = 12 = sqrt(a282165(6))
-- a282164(8) = 24 = sqrt(a282165(7))
-- a282164(9) = 48 = sqrt(a282165(8))

-- a282164(n) = sqrt(a282165(n - 1))
