module XorTriangle.A334592 (a334592) where
import XorTriangle.XorTriangleHelper (xorTriangle)

a334592 :: Integer -> Int
a334592 = length . filter not . concat . xorTriangle
