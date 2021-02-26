module SqrtMultiples.A327954 (a327954, a327954_list) where
import SqrtMultiples.A327953 (a327953_list)
import Helpers.ListHelpers (firstDifferences)

a327954_list :: [Integer]
a327954_list = firstDifferences a327953_list

a327954 :: Int -> Integer
a327954 n = a327954_list !! (n - 1)
