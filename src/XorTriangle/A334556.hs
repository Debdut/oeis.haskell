module XorTriangle.A334556 (a334556, a334556_list) where
import XorTriangle.XorTriangleHelper (xorTriangle, integerFromBools)

inA334556 :: Integer -> Bool
inA334556 = isRotationallySymmetric . xorTriangle where
  isRotationallySymmetric triangle = topRow == left && left == right where
    topRow = last triangle
    left = map head triangle
    right = reverse $ map last triangle

a334556_list :: [Integer]
a334556_list = filter inA334556 [0..]

a334556 n = a334556_list !! (n - 1)
