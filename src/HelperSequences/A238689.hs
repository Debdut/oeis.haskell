module HelperSequences.A238689 (a238689, a238689_row) where
import HelperSequences.A000040 (a000040_list)

a238689 :: Int -> Integer
a238689 n = a238689_list !! (n - 1)

a238689_list :: [Integer]
a238689_list = concatMap a238689_row [1..]

a238689_row :: Integer -> [Integer]
a238689_row 1 = [1]
a238689_row n = a n [] a000040_list where
  a m factors ps@(p:ps')
    | m == 1         = factors
    | m `mod` p == 0 = a (m `div` p) (p : factors) ps
    | otherwise      = a m           factors       ps'
  a _ _ [] = []
