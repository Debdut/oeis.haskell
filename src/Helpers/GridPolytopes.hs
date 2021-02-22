module Helpers.GridPolytopes (countPolygons, Polygon (..)) where
import Helpers.ListHelpers (cartesianProduct)
import Helpers.Subsets (choose)
import Data.List (genericTake, nub)
import Math.NumberTheory.Powers.Squares (exactSquareRoot)
import Data.Set (Set)
import qualified Data.Set as Set

data Polygon = Triangle | Square | Hexagon deriving Eq
type PVector = [Integer]
type VertexSet = Set PVector

magnitudeSquared :: [Integer] -> Integer
magnitudeSquared = sum . map (^2)

magSolutions :: Integer -> [[Integer]]
magSolutions n = magSolutionsList !! fromIntegral n

magSolutionsList = map magSolutions' [0..]

-- solutions to x^2 + y^2 + z^2 = n.
magSolutions' :: Integer -> [[Integer]]
magSolutions' = recurse 3 where
  -- recurse :: Int -> Int -> [[Int]]
  recurse 1 n = case exactSquareRoot n of (Just rootN) -> [[rootN]]
                                          Nothing      -> []
  recurse k n = concatMap (\p -> map (p:) $ recurse (k-1) (n-p^2)) validParts where
    validParts = takeWhile ((<=n) . (^2)) [0..]

-- This reverses; probably this can be fixed with a fold.
-- allSigns [0,1,2] = [[-2,-1,0],[2,-1,0],[-2,1,0],[2,1,0]]
-- allSigns :: [Int] -> [[Int]]
allSigns :: (Eq a, Num a) => [a] -> [[a]]
allSigns ns = recurse ns [[]] where
  recurse [] known = known
  recurse (0:ks) known = recurse ks $ map (0:) known
  recurse (k:ks) known = recurse ks $ concatMap (\i -> [-k:i, k:i]) known

isValid :: Polygon -> PVector -> PVector -> Bool
isValid polygon v u = magnitudesMatch && correctAngle where
  magnitudesMatch = magnitudeSquared u == magnitudeSquared v
  dotProduct = sum $ zipWith (*) u v
  correctAngle
    | polygon == Triangle =  2 * dotProduct == magnitudeSquared v
    | polygon == Square   =      dotProduct == 0
    | polygon == Hexagon  = -2 * dotProduct == magnitudeSquared v

adjacentSides :: Polygon -> Integer -> [[[Integer]]]
adjacentSides polygon = filter (\[v,u] -> isValid polygon v u) . choose 2 . concatMap allSigns . magSolutions

makeShape :: Polygon -> (PVector -> PVector -> Set PVector)
makeShape Triangle = makePolygon (\u v -> [[], [u], [v]])
makeShape Square   = makePolygon (\u v -> [[], [u], [v], [u,v]])
makeShape Hexagon  = makePolygon (\u v -> [[], [u], [v], [u,u,v], [u,v,v], [u,u,v,v]])

makePolygon :: (PVector -> PVector -> [[PVector]]) -> PVector -> PVector -> VertexSet
makePolygon vectorCombinations u v = Set.fromList $ map (\c -> zipWith (-) c maxCoords) coords where
  maxCoords = foldr1 (zipWith min) coords
  coords = map (foldr (zipWith (+)) [0,0,0]) $ vectorCombinations u v

boundingBox :: VertexSet -> [Integer]
boundingBox polygon = foldr1 (zipWith max) $ Set.toList polygon

-- Hexagons with side length k, all nonnegative coordinates, and touching the coordinate planes
normalized :: Polygon -> Integer -> [VertexSet]
normalized polygon k = nub $ map (\[v,u] -> makeShape polygon v u) $ adjacentSides polygon k

-- Bounding boxes for hexagons with side length sqrt(k)
boundingBoxes :: Polygon -> Integer -> [[Integer]]
boundingBoxes shape = map boundingBox . normalized shape

allBoundingBoxes :: Polygon -> [[[Integer]]]
allBoundingBoxes Square = allSquareBoundingBoxes
allBoundingBoxes Triangle = allTriangleBoundingBoxes
allBoundingBoxes Hexagon = allHexagonBoundingBoxes

allSquareBoundingBoxes :: [[[Integer]]]
allSquareBoundingBoxes = map (boundingBoxes Square) [1..]

allTriangleBoundingBoxes :: [[[Integer]]]
allTriangleBoundingBoxes = map (boundingBoxes Triangle) [1..]

allHexagonBoundingBoxes :: [[[Integer]]]
allHexagonBoundingBoxes = map (boundingBoxes Hexagon) [1..]

countPolygons :: Polygon -> Integer -> Integer
countPolygons polygon n = sum $ map countShifts validBoundingBoxes where
  countShifts = product . map (`subtract` n)
  validBoundingBoxes = filter ((<n) . maximum) $ concat $ genericTake upperBound (allBoundingBoxes polygon)
  upperBound
    | polygon == Triangle = 3 * n^2
    | polygon == Square   = 3 * n^2 -- improve this bound!
    | polygon == Hexagon  = (3 * n^2) `div` 4 + 1
