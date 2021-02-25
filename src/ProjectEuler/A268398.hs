module ProjectEuler.A268398 (a268398) where
import ProjectEuler.A085731 (a085731)

a268398 :: Int -> Integer
a268398 n = a268398_list !! (n - 1)

a268398_list :: [Integer]
a268398_list = scanl1 (+) $ map a085731 [1..]
