module AlecSequences.A279967 (a279967) where
import Tables.A274080 (a274080_row)
import Data.List (genericIndex)

a279967 :: Integer -> Integer
a279967 1 = 1
a279967 n = genericIndex a279967_list (n - 1)

a279967_list :: [Integer]
a279967_list = 1 : map count [2..] where
  count n = sum $ filter isFactorOf adjacentLabels where
    adjacentLabels = map a279967 (a274080_row n)
    isFactorOf a_i = a_i > 0 && n `mod` a_i == 0
