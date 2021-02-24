module Walk.A293689 (a293689, a293689_list) where
import Helpers.Primes (isPrime)
-- The Prime Ant

-- [3 4 5 6 ...]
-- [2]

-- [4 5 6 ...]
-- [3 2]

-- [5 6 7 ...]
-- [4 3 2]

-- [2 5 6 7 ...]
-- [5 2]

a293689 :: Int -> Int
a293689 = (!!) a293689_list

a293689_list :: [Int]
a293689_list = scanl (+) 0 firstDifferences where
  firstDifferences = recurse [3..] [2] where
    recurse (f:fs) (c:cs)
      | isPrime c = 1 : recurse fs (f:c:cs)
      | otherwise = (-1) : recurse newFs newCs where
        d = leastPrimeDivisor c
        newCs = case cs of (h:t) -> h + d : t
        newFs = c `div` d : f : fs

-- least prime divisor
leastPrimeDivisor :: Int -> Int
leastPrimeDivisor n = head $ filter (\i -> n `mod` i == 0) [2..]


------------------------------------------------------------------------------

-- Another idea for the prime ant:
-- -- Find the composite furthest to the right.-- Divide by it's least common
-- -- divisor, and increment the number to the right of it.
--
-- primeAnt = recurse ([3, 2], [4..]) where
--     recurse (beginning, end) = (1 + length beginning) : recurse (nextGen beginning end)
--
-- leastPrimeDivisor n = head $ filter (\i -> n `mod` i == 0) [2..]
--
-- -- [2] [4, 2, 5..] => [3] [2, 2, 5..]
-- nextGen (h1:l1) (h2:l2) =
--   transferLists (h1+1:l1) ((h2 `div` leastPrimeDivisor h2):l2)
--
-- -- [3] [2, 2, 5, 6..] => [5, 2, 2, 3] [6..]
-- -- [6, 2, 2, 3] [3, 7..] => [2, 2, 3] [6, 3, 7..]
-- transferLists (s:begList) (c:endList)
--   | not $ isPrime s = (begList, s : c : endList)
--   | isPrime c = transferLists (c:s:begList) endList
--   | otherwise = (s:begList, c:endList)
--
--
-- -- 2, 3, 4, 5, 6, 7, 8, ...
-- --       ^                a(1) = 3
-- --    4, 2
-- --    ^                   a(2) = 2
-- -- 3, 2, 2, 5, 6
-- --             ^          a(3) = 5
-- --          6, 3
-- --          ^             a(4) = 4
-- --       3, 3, 3, 7, 8
-- --                   ^    a(5) = 7
-- --                8, 4
-- --                ^       a(6) = 6
