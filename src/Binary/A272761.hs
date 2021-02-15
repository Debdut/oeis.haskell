module Binary.A272761 (a272761) where
import Binary.A272759 (a272759)
import Binary.A272760 (a272760)

a272761 :: Int -> Int
a272761 n = a272761_list !! (n - 1)

a272761_list :: [Int]
a272761_list = filter (\i -> a272759 i /= a272760 i) [1..]
