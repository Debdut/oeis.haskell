module Helpers.Heronian (Triangle, heronianTriangles, isIsosceles, isPrimitive,  primitiveIsoscelesHeronianTriangles) where
import Math.NumberTheory.Powers.Squares (isSquare')
type Triangle = (Integer, Integer, Integer)

increasingSequences :: Integer -> [Triangle]
increasingSequences perimeter = concatMap triangle [1..perimeter `div` 3] where
  triangle shortestSide = map triangle' [shortestSide..(perimeter - shortestSide) `div` 2] where
    triangle' mediumSide = (shortestSide, mediumSide, perimeter - shortestSide - mediumSide)

-- This only works when the perimeter is even. E.g. squareOfEvenArea (3,3,3) = 4
squareOfEvenArea :: Triangle -> Integer
squareOfEvenArea (a, b, c) = s * (s-a) * (s-b) * (s-c) where
  s = (a + b + c) `div` 2

hasIntegerArea :: Triangle -> Bool
hasIntegerArea = isSquare' . squareOfEvenArea

isValidTriangle :: Triangle -> Bool
isValidTriangle (a, b, c) = a + b > c

isIsosceles :: Triangle -> Bool
isIsosceles (a, b, c) = a == b || b == c

-- Since equilateral triangles are never Heronian.
isScalene :: Triangle -> Bool
isScalene = not . isIsosceles

isPrimitive :: Triangle -> Bool
isPrimitive (a, b, c) = a `gcd` b `gcd` c == 1

heronianTriangles :: Integer -> [Triangle]
heronianTriangles perimeter
  | odd perimeter = []
  | otherwise     = filter hasIntegerArea $ filter isValidTriangle $ increasingSequences perimeter

isoscelesTriangles :: Integer -> [Triangle]
isoscelesTriangles n = map (\b -> (n - 2*b, b, b)) [lb..(n-1) `div` 2]  where
  lb = n `div` 4 + 1

isoscelesHeronianTriangles :: Integer -> [Triangle]
isoscelesHeronianTriangles n
  | even n    = filter hasIntegerArea $ isoscelesTriangles n
  | otherwise = []

primitiveIsoscelesHeronianTriangles' :: Integer -> [Triangle]
primitiveIsoscelesHeronianTriangles' n
  | even n    = filter (\(a, b, _) -> gcd a b == 1) $ filter hasIntegerArea $ isoscelesTriangles n
  | otherwise = []

primitiveIsoscelesHeronianTriangles :: Integer -> [Triangle]
primitiveIsoscelesHeronianTriangles perimeter = filter isPrimitive $ filter isIsosceles $ heronianTriangles perimeter

-- a_list = map (length . isoscelesHeronianTriangles) [1..]
-- b_list = filter (not . null . isoscelesHeronianTriangles) [1..]
-- c_list = filter (>0) a_list

-- d_list = map (length . primitiveIsoscelesHeronianTriangles) [1..]


--  3: (1,1,1)
--  4: ()         -- 3: kinda 2?
--  5: (1,2,2)
--  6: (2,2,2)
--  7: (3,2,2)
--  8: (2,3,3)
--  9: (3,3,3)
-- 10: (4,3,3)
-- 11: (5,3,3)
-- 12: (4,4,4)
-- 13: (5,4,4)
-- 14: (6,4,4)
-- 15: (7,4,4)
-- 16: (6,5,5)
