module HeronianTriangles.A305717 (a305717, a305717_list) where
import HelperSequences.A051516 (a051516_list)

a305717_list :: [Int]
a305717_list = filter (>0) a051516_list

a305717 :: Int -> Int
a305717 n = a305717_list !! (n-1)
