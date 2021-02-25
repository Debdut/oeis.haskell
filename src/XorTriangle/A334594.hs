module XorTriangle.A334594 (a334594) where
import XorTriangle.XorTriangleHelper (integerFromBools, xorTriangle)

a334594_row :: Integer -> [Integer]
a334594_row = reverse . map integerFromBools . xorTriangle

a334594_list :: [Integer]
a334594_list = concatMap a334594_row [1..]

a334594 :: Int -> Integer
a334594 n = a334594_list !! (n - 1)
