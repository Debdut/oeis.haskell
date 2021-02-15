module EKG.A169851 (a169851) where
import Helpers.EKGBuilder (buildEKG)

a169851 :: Int -> Integer
a169851 n = a169851_list !! (n - 1)

a169851_list :: [Integer]
a169851_list = buildEKG [10]
