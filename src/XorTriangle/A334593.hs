module XorTriangle.A334593 (a334593) where
import XorTriangle.XorTriangleHelper (xorTriangle)

a334593 :: Integer -> Int
a334593 = length . filter id . concat . xorTriangle
