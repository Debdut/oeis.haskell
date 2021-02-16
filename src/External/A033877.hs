module External.A033877 (a033877) where
import Helpers.ChessSequences (chessMoveCounter, kingN, kingW, kingSW)
import Helpers.Table (tableByAntidiagonals)

a033877 :: Integer -> Integer
a033877 n = a033877T  (n' + 1) (k' + 1) where
    (n', k') = tableByAntidiagonals (n - 1)

-- Longest chain is given by A094727.
a033877T :: Integer -> Integer -> Integer
a033877T = chessMoveCounter visibleCells where
    visibleCells n k = concatMap (\f -> f n k) [kingN, kingW, kingSW]
