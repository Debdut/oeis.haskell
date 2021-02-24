module HeronianTriangles.A305704 (a305704, a305704_list) where
import HelperSequences.A051518 (a051518_list)

-- Even numbers not in A051518
a305704_list :: [Integer]
a305704_list = map (`div` 2) a051518_list

a305704 :: Int -> Integer
a305704 n = a305704_list !! (n-1)
