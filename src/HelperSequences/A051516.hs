module HelperSequences.A051516 (a051516, a051516_list) where
import Helpers.Heronian (Triangle, heronianTriangles)

a051516_list :: [Int]
a051516_list = map (length . heronianTriangles) [1..]

a051516 :: Int -> Int
a051516 n = a051516_list !! (n-1)
