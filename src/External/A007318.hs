module External.A007318 (a007318) where
import Helpers.ChessSequences (chessMoveCounter, kingN, kingW)
import Helpers.Table (tableByAntidiagonals)

a007318 :: Integer -> Integer
a007318 n = a007318T  (n' + 1) (k' + 1) where
    (n', k') = tableByAntidiagonals n

-- Longest chain is given by A002024
-- Slow implementation of Pascal's triangle.
a007318T :: Integer -> Integer -> Integer
a007318T = chessMoveCounter visibleCells where
    visibleCells n k = concatMap (\f -> f n k) [kingN, kingW]
