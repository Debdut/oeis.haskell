module Helpers.GridLabeling (pairs, onALine, onLine, everyPair) where
import Helpers.Table (tableByAntidiagonals)
import Data.Ratio ((%))

pairs :: [(Integer, Integer)]
pairs = map tableByAntidiagonals [0..]

-- Check if the slope of any two tuples is equal.
-- e.g. (3, 7), (1, 6), (7, 9):
  -- (3 - 1, 7 - 6) = (2, 1)
  -- (1 - 7, 6 - 9) = (-6, -3)
onALine :: Integral a => (a, a) -> (a, a) -> (a, a) -> Bool
onALine (a_0, b_0) (a_1, b_1) (a_2, b_2)
  | b_0 == b_1 && b_0 == b_2 = True
  | b_0 == b_1 || b_0 == b_2 = False
  | otherwise = (a_0 - a_1) % (b_0 - b_1) == (a_0 - a_2) % (b_0 - b_2)


-- Given a list of pairs of points, check if the given point is on any lines
-- made from connecting those points.
onLine :: Integral a => [((a, a), (a, a))] -> (a, a) -> Bool
onLine pairsOfPoints point = any (uncurry (onALine point)) pairsOfPoints

everyPair :: [a] -> [(a, a)]
everyPair [] = []
everyPair (a:as) = map (\b -> (a, b)) as ++ everyPair as
