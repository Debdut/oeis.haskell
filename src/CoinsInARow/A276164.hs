module CoinsInARow.A276164 (a276164) where
import CoinsInARow.A276163 (a276163)

-- A276164(n) = (A000217(n) + A276163(n))/2
-- Best score for first player (of all possible games)
a276164 :: Int -> Int
a276164 n = (n * (n + 1) `div` 2 + a276163 n) `div` 2
