module Helpers.F3Matrix where
import Data.Matrix (mapRow, Matrix, getRow, nrows, getElem, switchRows, ncols)
import Data.Vector (Vector, zipWith, map, (!))
import Data.List (find, delete)
import Data.Maybe (fromMaybe)

-- Really this should be Matrix Z/3
-- but for now a specially crafted Matrix Int will do.

rref :: Matrix Int -> Matrix Int
rref = reduceMatrix 1 1 where
  reduceMatrix r c m
    | r > nrows m || c > ncols m = m
    | otherwise                  = reduceMatrix r' c' m' where
      m' = reduceColumn r c m --
      c' = c + 1
      r' = if getElem r c m' == 0 then r else r + 1

multiplyRow :: Int -> Int -> Matrix Int -> Matrix Int
multiplyRow scalar = mapRow (\_ i -> (scalar * i) `mod` 3)


addRows :: Int -- r_i column to be changed
        -> Int -- a_j (scalar multiple for row r_j)
        -> Int -- r_j
        -> Matrix Int
        -> Matrix Int
addRows r1 l r2 m = mapRow (\j x -> (x + l * getElem r2 j m) `mod` 3) r1 m

-- (1) Multiply all rows below r by their multiplicitive inverse
-- (2) Swap to the top
-- (3) Add appropriate multiples of the "top" row to all other rows
reduceColumn :: Int -> Int -> Matrix Int -> Matrix Int
reduceColumn r c = (cancelRows r c) . (swapToTheTop r c) . (clearOut r c)

-- (1)
clearOut :: Int -> Int -> Matrix Int -> Matrix Int
clearOut r c m = foldr (multiplyRow 2) m invertibleRows where
  invertibleRows = filter (\r_i -> getElem r_i c m == 2) [r..nrows m]


-- (2)
swapToTheTop :: Int        -- Row index threshold
             -> Int        -- Column index
             -> Matrix Int -- initial matrix
             -> Matrix Int -- final matrix
swapToTheTop r c m = switchRows r' r m where
  r' = fromMaybe r $ find (\r_i -> getElem r_i c m == 1) [r..nrows m]


-- (3)
cancelRows :: Int -- Row index
           -> Int -- Column index
           -> Matrix Int -- initial matrix
           -> Matrix Int -- resultant matrix
cancelRows r c m
  | getElem r c m /= 1 = m
  | otherwise          = foldr cancel m nonZeroRowsIndices where
    nonZeroRowsIndices = filter (\r_i -> getElem r_i c m /= 0) $ delete r [1..nrows m]
    cancel r_i m' = addRows r_i rInv r m' where
        rInv = if getElem r_i c m == 1 then 2 else 1

-- Count the number of non-zero *rows*.
-- rank :: Matrix Bool -> Int
-- rank m = length $ filter (not . all (==False)) $ toLists m' where
--   m' = rref m

-- nullity :: Matrix Bool -> Int
-- nullity m = ncols m - rank m
