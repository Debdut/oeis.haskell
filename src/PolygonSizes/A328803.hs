module PolygonSizes.A328803 (a328803, a328803_list) where
import Helpers.PolygonSizes (a001481_pairs)

a328803_list :: [Integer]
a328803_list = map (minimum . map (uncurry (+))) a001481_pairs

a328803 :: Int -> Integer
a328803 n = a328803_list !! (n - 1)
