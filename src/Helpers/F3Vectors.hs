module Helpers.F3Vectors where

-- import Data.Matrix (mapRow, Matrix, getRow, nrows, getElem, switchRows, ncols)
import Data.Vector (Vector, zipWith, (!), (//), map, length)
import Data.List (find, delete)
import Data.Maybe (fromMaybe)

-- -- Really this should be Matrix Z/3
-- -- but for now a specially crafted Vector (Vector Int) will do.

rref :: Vector (Vector Int) -> Vector (Vector Int)
rref = reduceMatrix 0 0 where
  reduceMatrix r c m
    | r > nrows m || c > ncols m = m
    | otherwise                  = reduceMatrix r' (c + 1) m' where
      m' = reduceColumn r c m
      r' = if m' ! r ! c == 0 then r else r + 1

multiplyRow :: Int -> Int -> Vector (Vector Int) -> Vector (Vector Int)
multiplyRow scalar r_i m = m // [(r_i, scaledRow)] where
  scaledRow = Data.Vector.map (\i -> (i * scalar) `mod` 3) $ m ! r_i


nrows :: Vector (Vector Int) -> Int
nrows m = Data.Vector.length m - 1

ncols :: Vector (Vector Int) -> Int
ncols m = Data.Vector.length (m ! 0) - 1

combineRows :: (Int -> Int -> Int) -- function to combine rows: e.g. (+)
            -> Int -- r_i column to be changed
            -> Int -- r_j
            -> Vector (Vector Int)
            -> Vector (Vector Int)
combineRows f r_i r_j m = m // [(r_i, newRow)] where
  newRow = Data.Vector.zipWith f (m ! r_i) (m ! r_j)

switchRows :: Int -- row1
           -> Int -- row2
           -> Vector (Vector Int) -- initial matrix
           -> Vector (Vector Int) -- final matrix
switchRows r1 r2 m = m // [(r1, m ! r2), (r2, m ! r1)]

-- -- (1) Multiply all rows below r by their multiplicitive inverse
-- -- (2) Swap to the top
-- -- (3) Add appropriate multiples of the "top" row to all other rows
reduceColumn :: Int -> Int -> Vector (Vector Int) -> Vector (Vector Int)
reduceColumn r c = cancelRows r c . swapToTheTop r c . clearOut r c

-- -- (1)
clearOut :: Int -> Int -> Vector (Vector Int) -> Vector (Vector Int)
clearOut r c m = foldr (multiplyRow 2) m invertibleRows where
  invertibleRows = filter (\r_i -> m ! r_i ! c == 2) [r..nrows m]

-- -- (2)
swapToTheTop :: Int        -- Row index threshold
             -> Int        -- Column index
             -> Vector (Vector Int) -- initial matrix
             -> Vector (Vector Int) -- final matrix
swapToTheTop r c m = switchRows r' r m where
  r' = fromMaybe r $ find (\r_i -> m ! r_i ! c == 1) [r..nrows m]


-- -- (3)
cancelRows :: Int -- Row index
           -> Int -- Column index
           -> Vector (Vector Int) -- initial matrix
           -> Vector (Vector Int) -- resultant matrix
cancelRows r c m
  | m ! r ! c /= 1 = m
  | otherwise      = foldr cancel m nonZeroRowsIndices where
    nonZeroRowsIndices = filter (\r_i -> m ! r_i ! c /= 0) $ delete r [0..nrows m]
    cancel r_i = combineRows (\i j -> (i + rInv * j) `mod` 3) r_i r where
      rInv = if m ! r_i ! c == 1 then 2 else 1

-- -- Count the number of non-zero *rows*.
-- -- rank :: Matrix Bool -> Int
-- -- rank m = Data.Vector.length $ filter (not . all (==False)) $ toLists m' where
-- --   m' = rref m

-- -- nullity :: Matrix Bool -> Int
-- -- nullity m = ncols m - rank m
