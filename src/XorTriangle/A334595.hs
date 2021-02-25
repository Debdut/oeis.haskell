module XorTriangle.A334595 (a334595) where
import XorTriangle.XorTriangleHelper (xorTriangle, integerFromBools)
import Helpers.Records (maxIndices)

a334595 :: Integer -> Integer
a334595 = integerFromBools . reverse . map last . xorTriangle
