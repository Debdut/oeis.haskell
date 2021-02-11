module AlecSequences.A269526 (a269526) where
import Tables.A274080 (a274080_row)
import Data.List ((\\), genericIndex)

a269526 :: Integer -> Integer
a269526 n = genericIndex a269526_list (n - 1)

a269526_list = map f [1..] where
  f n = head $ [1..] \\ map a269526 (a274080_row n)
