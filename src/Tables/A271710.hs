module Tables.A271710 (a271710) where
import Helpers.Table (tableByAntidiagonals)
import Data.Bits (xor)

a271710 :: Int -> Integer
a271710 i = xor (2^n) (2^k) where
  (n, k) = tableByAntidiagonals i
