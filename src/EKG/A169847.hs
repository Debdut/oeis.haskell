module EKG.A169847 (a169847) where
import Helpers.EKGBuilder (buildEKG)

a169847 :: Int -> Integer
a169847 n = a169847_list !! (n - 1)

a169847_list :: [Integer]
a169847_list = buildEKG [8]
