module Tables.A268040 (a268040) where
import Helpers.Table (tableByAntidiagonals)
import Data.Bits ((.&.), xor)
-- "A268040" => "A268040 Array y AND NOT x, read by antidiagonals.",

a268040 :: Int -> Int
a268040 i = k .&. (n `xor` k) where
  (n, k) = tableByAntidiagonals i
