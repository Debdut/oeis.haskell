module Tables.A004489 (a004489) where
import Helpers.BaseRepresentation (toBase, fromBase)
import Helpers.ListHelpers (zipWithPadding)
import Helpers.Table (tableByAntidiagonals)

a004489 :: Int -> Int
a004489 i = fromBase 3 $ map tertSum $ zipWithPadding 0 (base3 n) (base3 k) where
  (n, k) = tableByAntidiagonals i
  tertSum (n', k') = (n' + k') `mod` 3
  base3 = toBase 3
