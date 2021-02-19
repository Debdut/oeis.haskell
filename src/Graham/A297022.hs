module Graham.A297022 (a297022, a297022_list) where
import Graham.A067565 (a067565_list)

a297022 :: Int -> Integer
a297022 n = a297022_list !! (n - 1)

a297022_list :: [Integer]
a297022_list = filter (/=0) a067565_list
