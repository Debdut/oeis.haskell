module Tables.A301851 where
import Helpers.DistinctDistances (distinctDistances)
import Helpers.Table (tableByAntidiagonals)

a301851 :: Integer -> Int
a301851 n = distinctDistances (n' + 1) (k' + 1) where
    (n', k') = tableByAntidiagonals (n - 1)
