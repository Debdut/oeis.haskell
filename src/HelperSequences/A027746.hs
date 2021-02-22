module HelperSequences.A027746 (a027746, a027746_row) where
import HelperSequences.A238689 (a238689_row)

a027746 :: Int -> Integer
a027746 n = a027746_list !! (n - 1)

a027746_list :: [Integer]
a027746_list = concatMap a027746_row [1..]

a027746_row :: Integer -> [Integer]
a027746_row = reverse . a238689_row
