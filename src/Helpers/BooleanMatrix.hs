module Helpers.BooleanMatrix (rref, rank, nullity) where
import Data.Matrix (Matrix, mapRow, getRow, nrows, ncols, getElem, switchRows, toLists)
import Data.Vector (Vector, zipWith, (!))
import Data.List (delete, find)
import Data.Maybe (fromJust)

rref :: Matrix Bool -> Matrix Bool
rref = reduceMatrix 1 1 where
  reduceMatrix r c m
    | r > nrows m || c > ncols m = m
    | otherwise                  = reduceMatrix r' c' m' where
      m' = reduceColumn r c m --
      c' = c + 1
      r' = if getElem r c m' then r + 1 else r

-- Replaces row j with row i XOR row j (elementwise):
--
--                  (T F F)   (T F F)
--                  (F T F)   (F T T)
-- Then xorRows 2 3 (F F T) = (F F T)
--
xorRows :: Int -- row index i
        -> Int -- row index j
        -> Matrix Bool -- initial matrix
        -> Matrix Bool
xorRows i j m = setRow newRow j m where
  newRow = Data.Vector.zipWith (/=) (getRow i m) (getRow j m)

setRow :: Vector Bool -> Int -> Matrix Bool -> Matrix Bool
setRow row = mapRow (\k _ -> row ! (k - 1))

relevantRowIndices :: Int -> Matrix Bool -> [Int]
relevantRowIndices c m = filter (\row -> getElem row c m) [1..nrows m]

reduceColumn :: Int -> Int -> Matrix Bool -> Matrix Bool
reduceColumn r c m
  | done      = m
  | swap      = reduceColumn r c $ switchRows r' r m
  | otherwise = foldr (xorRows r) m (delete r rowIndices) where
    rowIndices = relevantRowIndices c m
    r' = fromJust $ find (>r) rowIndices
    swap = r `notElem` rowIndices
    done = rowIndices == [r] || all (<r) rowIndices

-- Count the number of non-zero *rows*.
rank :: Matrix Bool -> Int
rank m = length $ filter (not . all (==False)) $ toLists m' where
  m' = rref m

nullity :: Matrix Bool -> Int
nullity m = ncols m - rank m
