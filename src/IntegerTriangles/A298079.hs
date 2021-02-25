module IntegerTriangles.A298079 (a298079, a298079_list) where
import Data.List (sort)
import Data.Set (Set)
import qualified Data.Set as Set
type Point = (Int, Int)
-- Always implicitly include the point (0, 0)
data Triangle = Triangle Point Point
instance Show Triangle where
  show (Triangle p1 p2) = "(0,0)" ++ show p1 ++ show p2

instance Eq Triangle where
  t1 == t2 = sideLengths t1 == sideLengths t2

instance Ord Triangle where
  t1 `compare` t2 = sideLengths t1 `compare` sideLengths t2

a298079 n = a298079_list !! n

a298079_list = map Set.size a298079_triangles

a298079_triangles :: [Set Triangle]
a298079_triangles = recurse 1 Set.empty where
  recurse n existing = sizeN : recurse (n + 1) large where
    newTriangles = if odd n then existing else existing `Set.union` allTriangles (n `div` 2)
    (sizeN, large) = Set.partition (\t -> perimeter t < fromIntegral n) newTriangles

-- All triangles that fit into an n X n box
allTriangles :: Int -> Set Triangle
allTriangles n = foldr (Set.union . triangles n) Set.empty [1..n] where
  triangles i j = threeWallTriangles i j `Set.union` diagonalTriangles i j

-- When n=k, this double counts the triangles.
threeWallTriangles :: Int -> Int -> Set Triangle
threeWallTriangles n k = Set.fromList [Triangle (n, b) (a, k) | a <- [0..n-1], b <- [0..k-1]]

sideLengths :: Triangle -> (Int, Int, Int)
sideLengths (Triangle (x1, y1) (x2, y2)) =
  case sort [x1^2 + y1^2, x2^2 + y2^2, (x1 - x2)^2 + (y1 - y2)^2] of
    [a, b, c] -> (a, b, c)

-- This quadruple-counts or double-counts all triangles.
diagonalTriangles :: Int -> Int -> Set Triangle
diagonalTriangles n k = Set.fromList $ filter nonColinear allTriangles where
  allTriangles = [Triangle (a, b) (n, k) | a <- [0..n], b <- [0..k]]
  nonColinear (Triangle (x1, y1) (x2, y2)) = x1*y2 /= x2*y1

perimeter :: Triangle -> Float
perimeter t = case sideLengths t of (a, b, c) -> root a + root b + root c

root n = sqrt $ fromIntegral n
