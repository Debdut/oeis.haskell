module EKG.A169841 (a169841) where
import Helpers.EKGBuilder (buildEKG)

a169841 :: Int -> Integer
a169841 n = a169841_list !! (n - 1)

a169841_list :: [Integer]
a169841_list = buildEKG [5]
