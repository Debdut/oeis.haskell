module AlecSequences.A279965 (a279965) where
import Tables.A274080 (a274080_row)
import Data.List (genericIndex, genericLength)

a279965 :: Integer -> Integer
a279965 1 = 0
a279965 n = genericIndex a279965_list (n - 1)

a279965_list :: [Integer]
a279965_list = 0 : map count [2..] where
  count n = genericLength $ filter (even . (n+)) adjacentLabels where
    adjacentLabels = map a279965 (a274080_row n)
