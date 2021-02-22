module HelperSequences.A000788 (a000788) where
import HelperSequences.A000120 (a000120)

a000788 :: Int -> Int
a000788 = (a000788_list !!)

a000788_list :: [Int]
a000788_list = scanl1 (+) $ map a000120 [0..]
