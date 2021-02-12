module DoubleOrIncrement.A304027 where
import Helpers.Table (triangleByRows)
import Helpers.DoubleOrIncrement (numberOfGenerations)

-- Table read by rows: T(n, k) is the minimum number of applications of the map (x, y) -> (x + 1, 2*y) or the map (x, y) -> (2*x, y + 1) required to make both numbers in the pair equal, starting from (n, k), 0 <= k <= n.
a304027 :: Integer -> Int
a304027 = numberOfGenerations . triangleByRows

-- Table begins:
--   n\k|    0    1    2    3    4    5    6    7
--   ---+----------------------------------------
--     0|    0
--     1|    3    0
--     2|    5    2    0
--     3|    8    3    1    0
--     4|    7    4    6   10    0
--     5|    6    3    3    1    7    0
--     6|    5    9    2    9    6   10    0
--     7|    6    5   10    3    1    6   10    0
