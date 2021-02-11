module AlecSequences.A279966 (a279966) where
import Tables.A274080 (a274080_row)
import Data.List (genericIndex, genericLength)

a279966 :: Integer -> Integer
a279966 1 = 1
a279966 n = genericIndex a279966_list (n - 1)

a279966_list :: [Integer]
a279966_list = 1 : map count [2..] where
  count n = genericLength $ filter isFactorOf adjacentLabels where
    adjacentLabels = map a279966 (a274080_row n)
    isFactorOf a_i = a_i > 0 && n `mod` a_i == 0
