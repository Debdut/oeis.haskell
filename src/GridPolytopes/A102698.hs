module GridPolytopes.A102698 (a102698) where
import Helpers.GridPolytopes (countPolygons, Polygon (Triangle))

a102698 :: Integer -> Integer
a102698 n = countPolygons Triangle (n + 1)
