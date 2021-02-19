module Graham.A297104 (a297104) where
import Graham.A297022 (a297022_list)
import Helpers.Permutation (inversePermutation)

a297104 :: Int -> Integer
a297104 n = a297104_list !! (n - 1)

a297104_list :: [Integer]
a297104_list = inversePermutation 1 a297022_list
