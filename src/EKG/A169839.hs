module EKG.A169839 (a169839) where
import Helpers.EKGBuilder (buildEKG)

a169839 :: Int -> Integer
a169839 n = a169839_list !! (n - 1)

a169839_list :: [Integer]
a169839_list = buildEKG [4]
