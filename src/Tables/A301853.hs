module Tables.A301853 where
import Helpers.DistinctDistances (distinctDistances)
import Helpers.Table (triangleByRows)

a301853 :: Integer -> Int
a301853 n = case triangleByRows (n - 1) of (i, j) -> distinctDistances (i + 1) (j + 1)
