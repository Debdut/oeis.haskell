module Tables.A284486 (a284486, a284486_list) where
import Helpers.Table (tableByAntidiagonals)
import Data.Ratio ((%))
import Data.List (groupBy, sort, partition)

-- The lexicographically earliest table read by antidiagonals such that any
-- value appears at most twice on any line.
-- Conjecture: Every value appears twice on each line that contains an infinite number of gridpoints.

a284486 :: Int -> Integer
a284486 n = a284486_list !! (n - 1)

a284486_list :: [Integer]
a284486_list = f 0 where
  f index = nextValue : f (index + 1) where
    nextValue = findValue knownSeq nextPair where
      nextPair = pairs !! index
      knownSeq = groupByGridValue $ take index a284486_list

pairs :: [(Integer, Integer)]
pairs = map antidiagonalPairs [0..] where
  antidiagonalPairs i = (a + 1, b + 1) where
    (a, b) = tableByAntidiagonals i

-- Check if the slope of any two tuples is equal.
-- e.g. (3, 7), (1, 6), (7, 9):
  -- (3 - 1, 7 - 6) = (2, 1)
  -- (1 - 7, 6 - 9) = (-6, -3)
onALine :: Integral a => (a, a) -> (a, a) -> (a, a) -> Bool
onALine (a_0, b_0) (a_1, b_1) (a_2, b_2)
  | b_0 == b_1 && b_0 == b_2 = True
  | b_0 == b_1 || b_0 == b_2 = False
  | otherwise = (a_0 - a_1) % (b_0 - b_1) == (a_0 - a_2) % (b_0 - b_2)

groupByGridValue :: Ord a => [a] -> [(a, [(Integer, Integer)])]
groupByGridValue values = sort $ groupByFirst $ zip values pairs

groupByFirst :: Eq a => [(a, b)] -> [(a, [b])]
groupByFirst [] = []
groupByFirst ts@((a, _):_) = case partition (\(a', _) -> a' == a) ts of
  (matches, nonmatches) -> (a, map snd matches) : groupByFirst nonmatches

findValue :: (Num a, Ord a) => [(a, [(Integer, Integer)])] -> (Integer, Integer) -> a
findValue knownValues (a, b) = recurse 1 knownValues where
  recurse v [] = v
  recurse v ((marker, points):ts)
    | marker == v && onLine (everyPair points) (a, b) = recurse (v + 1) ts
    | otherwise = v

onLine :: Integral a => [((a, a), (a, a))] -> (a, a) -> Bool
onLine pairsOfPoints point = any (uncurry (onALine point)) pairsOfPoints

everyPair :: [a] -> [(a, a)]
everyPair [] = []
everyPair (a:as) = map (\b -> (a, b)) as ++ everyPair as

--     A   B   C   D   E   F
--   +---+---+---+---+---+---+
-- 1 | 1 | 1 | 2 | 3 | 4 | 3 |
--   +---+---+---+---+---+---+
-- 2 | 1 | 1 | 3 | 2 | 2 |   |
--   +---+---+---+---+---+---+
-- 3 | 2 | 2 | 3 | 1 |   |   |
--   +---+---+---+---+---+---+
-- 4 | 2 | 2 | 1 |   |   |   |
--   +---+---+---+---+---+---+
-- 5 | 3 | 4 |   |   |   |   |
--   +---+---+---+---+---+---+
-- 6 | 3 |   |   |   |   |   |
--   +---+---+---+---+---+---+
--
-- a(17) = 4 (B5) because:
-- 1 already appears twice on the line connecting B1-B2,
-- 2 already appears twice on the line connecting B3-B4, and
-- 3 already appears twice on the line connecting D1-C3.
