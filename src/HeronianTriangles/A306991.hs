module HeronianTriangles.A306991 (a306991, a306991_list) where
import Helpers.Heronian (primitiveIsoscelesHeronianTriangles)

a306991_list :: [Int]
a306991_list = filter (>0) $ map (length . primitiveIsoscelesHeronianTriangles) [2,4..]

a306991 :: Int -> Int
a306991 n = a306991_list !! (n-1)
