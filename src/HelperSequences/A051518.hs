module HelperSequences.A051518 (a051518, a051518_list) where
import Helpers.Heronian (Triangle, heronianTriangles)

a051518_list :: [Integer]
a051518_list = filter (not . null . heronianTriangles) [1..]

a051518 :: Int -> Integer
a051518 n = a051518_list !! (n-1)
