module EKG.A169855 (a169855) where
import Helpers.EKGBuilder (buildEKG)

a169855 :: Int -> Integer
a169855 n = a169855_list !! (n - 1)

a169855_list :: [Integer]
a169855_list = buildEKG [12]
