module GridPolytopes.A338322 (a338322) where
import Helpers.GridPolytopes (countPolygons, Polygon (Hexagon))

a338322 :: Integer -> Integer
a338322 = countPolygons Hexagon
