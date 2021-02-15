module EKG.A169843 (a169843) where
import Helpers.EKGBuilder (buildEKG)

a169843 :: Int -> Integer
a169843 n = a169843_list !! (n - 1)

a169843_list :: [Integer]
a169843_list = buildEKG [6]
