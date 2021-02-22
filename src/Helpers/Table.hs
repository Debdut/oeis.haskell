module Helpers.Table (tableByAntidiagonals, triangleByRows, indicesByAntidiagonals, triangularize, antidiagonalize) where
import HelperSequences.A025581 (a025581)
import HelperSequences.A002262 (a002262)
import Data.List (transpose)

-- 0 <= k; 0 <= n
-- tableByAntidiagonals 0 = (0, 0)
-- [(0,0),(1,0),(0,1),(2,0),(1,1),(0,2),(3,0),(2,1),(1,2),(0,3),(4,0)]
-- Table by antidiagonals
tableByAntidiagonals :: Integral a => a -> (a, a)
tableByAntidiagonals i = (a025581 i, a002262 i)

-- 0 <= k <= n
-- triangleByRows 0 = (0, 0)
-- [(0,0),(1,0),(1,1),(2,0),(2,1),(2,2),(3,0),(3,1),(3,2),(3,3),(4,0)]
-- Triangle by rows
triangleByRows :: Integral a => a -> (a, a)
triangleByRows i = (n + k, k) where
  (n, k) = tableByAntidiagonals i

-- (0,0),(1,0),(0,1),(2,0),(1,1),(0,2),(3,0),(2,1),(1,2),(0,3)
--------------------------------------------------------------
-- (0,0),(0,1),(0,2),(0,3)
-- (1,0),(1,1),(1,2)
-- (2,0),(2,1)
-- (3,0)
indicesByAntidiagonals :: Integral a => [(a, a)]
indicesByAntidiagonals = recurse (0,0) where
  recurse i@(0, a) = i : recurse (a + 1, 0)
  recurse i@(a, b) = i : recurse (a - 1, b + 1)

-- https://stackoverflow.com/a/61263204/3512049
antidiagonalize :: [a] -> [[a]]
antidiagonalize = transpose . transpose . triangularize

triangularize :: [a] -> [[a]]
triangularize = recurse 1 where
  recurse n [] = []
  recurse n as = b : recurse (n+1) e where (b,e) = splitAt n as
