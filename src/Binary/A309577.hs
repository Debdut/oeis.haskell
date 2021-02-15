module Binary.A309577 (a309577) where
import Binary.A309576 (a309576_rows)
-- Table read by rows: T(n, k) is n with the first k bits removed, 0 <= k <= A070939 n.

a309577_rows :: [[Int]]
a309577_rows = map reverse a309576_rows

a309577_list :: [Int]
a309577_list = concat a309577_rows

a309577 :: Int -> Int
a309577 n = a309577_list !! (n - 1)
