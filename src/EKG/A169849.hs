module EKG.A169849 (a169849) where
import Helpers.EKGBuilder (buildEKG)

a169849 :: Int -> Integer
a169849 n = a169849_list !! (n - 1)

a169849_list :: [Integer]
a169849_list = buildEKG [9]
