module HeronianTriangles.A308222 (a308222, a308222_list) where
import Helpers.Heronian (primitiveIsoscelesHeronianTriangles)

a308222_list :: [Integer]
a308222_list = filter (not . null . primitiveIsoscelesHeronianTriangles) [2,4..]

a308222 :: Int -> Integer
a308222 n = a308222_list !! (n-1)
