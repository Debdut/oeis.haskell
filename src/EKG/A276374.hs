module EKG.A276374 (a276374, a276374_list) where
import EKG.A240024 (a240024)
import HelperSequences.A002808 (a002808)

a276374 :: Int -> Int
a276374 n = a276374_list !! (n - 1)

a276374_list :: [Int]
a276374_list = filter (\i -> a240024 i == a002808 i) [1..]

