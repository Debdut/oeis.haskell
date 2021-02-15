module SubprimeFib.A214674 (a214674) where
import Helpers.SubprimeFib (subprimeFib)

a214674 :: Int -> Integer
a214674 n = a214674_list !! (n - 1)

a214674_list :: [Integer]
a214674_list = subprimeFib 1 1
