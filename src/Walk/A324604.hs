module Walk.A324604 (a324604) where
import Data.List (genericLength)
import Helpers.Table (triangleByRows)
import Helpers.NorthEastWalks (allTorusWalks)

a324604 :: Int -> Integer
a324604 n = case triangleByRows (n - 1) of (a, b) -> genericLength $ allTorusWalks (a + 1)  (b + 1)
