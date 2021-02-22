module Helpers.GrahamLinearAlgebra (rrefMatrix, matrixFromColumnLabels) where
import Graham.A248663 (a248663)
import Data.Matrix (Matrix, matrix)
import Data.Bits
import Helpers.BooleanMatrix (rref)

-- Initial Boolean matrix for A006255
initialMatrix :: Integer -> Matrix Bool
initialMatrix n = matrixFromColumnLabels $ [n + 1..upperBound n] ++ [n]

upperBound :: Integer -> Integer
upperBound n
  | n > 3     = 2 * n
  | otherwise = 2 * n + 2 -- a(2) = 6; a(3) = 8

entry :: [Integer] -- representation of columns
      -> Int       -- Column i
      -> Int       -- Row j
      -> Bool      -- resultant entry
entry cols i j = testBit a248663' (i - 1) where
  a248663'     = cols !! (j - 1)

bitLength :: Integral a => a -> Int
bitLength 0 = 0
bitLength n = 1 + bitLength (n `div` 2)

rrefMatrix :: Integer -> Matrix Bool
rrefMatrix = rref . initialMatrix

----------------------------------

matrixFromColumnLabels :: [Integer] -> Matrix Bool
matrixFromColumnLabels labels = matrix height (length columns) (uncurry $ entry columns) where
  height = maximum $ map bitLength columns
  columns = map a248663 labels
