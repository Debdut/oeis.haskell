module Tables.A051125 (a051125) where
import Helpers.Table (tableByAntidiagonals)

a051125 :: Int -> Int
a051125 i = 1 + max n k where
  (n, k) = tableByAntidiagonals (i - 1)
