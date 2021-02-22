module Helpers.ChessSequences (chessMoveCounter, queenN, queenNW, queenW, queenSW, kingN, kingNW, kingW, kingSW) where
import Data.MemoCombinators (memo2, integral)

-- Speed this up by keeping row/column/diagonal sums locally.
chessMoveCounter :: (Integer -> Integer -> [(Integer, Integer)]) -> Integer -> Integer -> Integer
chessMoveCounter f = memoizedCounter where
    memoizedCounter = memo2 integral integral computer where
        computer 0 _ = 0
        computer _ 0 = 0
        computer 1 1 = 1
        computer n k = sum $ map (uncurry memoizedCounter) $ f n k

queenN  n k = map (\n' -> (n',k)) [1..n-1]
queenNW n k = map (\m -> (n-m, k-m)) [1..min n k - 1]
queenW  n k = map (\k' -> (n, k')) [1..k-1]
queenSW n k = map (\m -> (n+m, k-m)) [1..k-1]

kingN  n k = [(n - 1, k) | n > 1]
kingNW n k = [(n - 1, k - 1) | k > 1, n > 1]
kingW  n k = [(n, k - 1) | k > 1]
kingSW n k = [(n + 1, k - 1) | k > 1]
