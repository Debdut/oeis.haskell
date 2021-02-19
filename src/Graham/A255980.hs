module Graham.A255980 (a255980) where
import Graham.A067565 (a067565)
import Math.NumberTheory.Powers.Squares (isSquare')

a255980 :: Integer -> Integer
a255980 n
  | isSquare' n = 0
  | otherwise  = 1 + a255980 (a067565 n)
