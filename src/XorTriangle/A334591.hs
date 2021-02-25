module XorTriangle.A334591 (a334591) where
import XorTriangle.XorTriangleHelper (xorTriangle, integerFromBools)
import Data.List (group)

a334591 :: Integer -> Int
a334591 = maximum . map longestRepeating . xorTriangle where
  longestRepeating = foldr (max . length) 0 . filter (not . head) . group
