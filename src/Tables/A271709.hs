module Tables.A271709 (a271709) where
import Helpers.Table (tableByAntidiagonals)

a271709 :: Int -> Integer
a271709 i = 2^n + 2^k where
  (n, k) = tableByAntidiagonals i
