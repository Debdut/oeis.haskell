module HeronianTriangles.A305703 (a305703, a305703_list) where
import HelperSequences.A051518 (a051518_list)

-- Even numbers not in A051518
a305703_list :: [Integer]
a305703_list = recurse [2, 4..] a051518_list where
  recurse (e:evens) ps@(p:perimeters)
    | e == p    = recurse evens perimeters
    | otherwise = e : recurse evens ps

a305703 :: Int -> Integer
a305703 n = a305703_list !! (n-1)
