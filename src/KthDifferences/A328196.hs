module KthDifferences.A328196 (a328196, a328196_list) where
import KthDifferences.A328190 (a328190_list)
import Helpers.ListHelpers (firstDifferences)

a328196_list :: [Integer]
a328196_list = firstDifferences a328190_list

a328196 :: Int -> Integer
a328196 n = a328196_list !! (n-1)
