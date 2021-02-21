module Tables.A049581 (a049581) where
import Helpers.Table (tableByAntidiagonals)

a049581 :: Int -> Int
a049581 i = abs (n - k) where
  (n, k) = tableByAntidiagonals i
