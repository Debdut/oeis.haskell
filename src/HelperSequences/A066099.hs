module HelperSequences.A066099 (a066099, a066099_list, a066099_tabf, a066099_row) where
import HelperSequences.A228351 (a228351_row)

a066099 :: Int -> Int
a066099 = (!!) a066099_list

a066099_list :: [Int]
a066099_list = concat a066099_tabf

a066099_tabf :: [[Int]]
a066099_tabf = map a066099_row [0..]

a066099_row :: Int -> [Int]
a066099_row 0 = [0]
a066099_row n = reverse $ a228351_row n
