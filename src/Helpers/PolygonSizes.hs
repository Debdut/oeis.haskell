module Helpers.PolygonSizes (triangleSizes, a001481_pairs) where
import Math.NumberTheory.Powers.Squares (integerSquareRoot')
import Data.Set (Set)
import qualified Data.Set as Set

-- equilateralTriangleSize 2 4 = 3
-- because this triangle (marked with *) has side length sqrt(3).
--    o
--   * o
--  o o *
-- o * o o
-- equilateralTriangleSize k n == equilateralTriangleSize (n-k+1) n
-- 1 <= k <= n
equilateralTriangleSize :: Integer -> Integer -> Integer
equilateralTriangleSize k n = 3 * k * (k - n - 1) + n^2 + n + 1

-- The n-th entry gives all squares of possible side lengths of equilateral
-- triangles in a triangular grid consisting of n + 1 rows.
triangleSizes :: [Set Integer]
triangleSizes = scanl f (Set.singleton 1) [3..] where
  f b n = Set.union b $ Set.fromList [equilateralTriangleSize k n | k <- [1..n `div` 2]]

a001481_pairs :: [[(Integer, Integer)]]
a001481_pairs = filter (not . null) $ map stepsOfLengthSqrt [0..] where
  stepsOfLengthSqrt n = filter (\(a, b) -> a^2 + b^2 == n) candidates where
    candidates = [(a, integerSquareRoot' (n - a^2)) | a <- [0..integerSquareRoot' (n `div` 2)]]
