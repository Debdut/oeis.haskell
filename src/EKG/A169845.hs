module EKG.A169845 (a169845) where
import Helpers.EKGBuilder (buildEKG)

a169845 :: Int -> Integer
a169845 n = a169845_list !! (n - 1)

a169845_list :: [Integer]
a169845_list = buildEKG [7]
