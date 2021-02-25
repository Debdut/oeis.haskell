module IntegerTriangles.A298121 (a298121) where
import IntegerTriangles.A298079 (a298079_list)
-- Cf. A028419.
a298121 n = a298121_list !! (n - 1)

a298121_list = scanl1 (+) a298079_list
