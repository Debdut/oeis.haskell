module Binary.A309576 (a309576, a309576_rows) where
import Helpers.Binary (lastBits)
-- Table read by rows: T(n, k) is the last k bits of n, 0 <= k <= A070939 n.

a309576_rows :: [[Int]]
a309576_rows = map (\n -> lastBits n ++ [n]) [1..]

a309576_list :: [Int]
a309576_list = concat a309576_rows

a309576 :: Int -> Int
a309576 n = a309576_list !! (n - 1)
