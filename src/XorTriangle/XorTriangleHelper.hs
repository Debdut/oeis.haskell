module XorTriangle.XorTriangleHelper (xorTriangle, integerFromBools) where
import Helpers.Binary (bitsList)

xorTriangle :: Integer -> [[Bool]]
xorTriangle n = recurse [bitsList n] where
  recurse ([]:ls) = ls
  recurse ls@(l:_) = recurse (l': ls) where
    l' = zipWith (/=) l (tail l)

integerFromBools :: [Bool] -> Integer
integerFromBools = foldl (\b a -> if a then 2*b + 1 else 2*b) 0
