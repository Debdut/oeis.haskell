module GridPolytopes.A334881 (a334881) where
import Helpers.GridPolytopes (countPolygons, Polygon (Square))

a334881 :: Integer -> Integer
a334881 = countPolygons Square
