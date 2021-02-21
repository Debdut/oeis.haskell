module PolygonSizes.A328804 (a328804, a328804_list) where
import Helpers.PolygonSizes (a001481_pairs)

a328804_list :: [Integer]
a328804_list = map (maximum . map (uncurry (+))) a001481_pairs

a328804 :: Int -> Integer
a328804 n = a328804_list !! (n - 1)
