module Walk.A324603 (a324603) where
import Data.List (genericLength)
import Helpers.Table (triangleByRows)
import Helpers.NorthEastWalks (allTorusWalks)

a324603 :: Int -> Integer
a324603 n = genericLength $ allTorusWalks n n
