module EKG.A276375 (a276375, a276375_list) where
import EKG.A240024 (a240024)
import HelperSequences.A002808 (a002808)

a276375 :: Int -> Int
a276375 n = a276375_list !! (n - 1)

a276375_list :: [Int]
a276375_list = filter (\i -> a240024 (i + 1) == a002808 i) [1..]

