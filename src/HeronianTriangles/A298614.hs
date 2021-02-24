module HeronianTriangles.A298614 (a298614, a298614_list) where
import Helpers.Heronian (Triangle, heronianTriangles, isPrimitive)

primitiveHeronianTriangles :: Integer -> [Triangle]
primitiveHeronianTriangles perimeter = filter isPrimitive $ heronianTriangles perimeter

-- Can speed up by computing even terms and interspersing 0s.
a070138_list :: [Int]
a070138_list = map (length . primitiveHeronianTriangles) [1..]

a298614_list :: [Int]
a298614_list = filter (>0) a070138_list

a298614 :: Int -> Int
a298614 n = a298614_list !! (n-1)
