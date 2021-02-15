module EKG.A169853 (a169853) where
import Helpers.EKGBuilder (buildEKG)

a169853 :: Int -> Integer
a169853 n = a169853_list !! (n - 1)

a169853_list :: [Integer]
a169853_list = buildEKG [11]
