module Chess.A334016 (a334016) where
import Helpers.ChessSequences (chessMoveCounter, queenN, queenNW, queenSW)
import Helpers.Table (tableByAntidiagonals)

a334016 :: Integer -> Integer
a334016 n = a334016T (n' + 1) (k' + 1) where
    (n', k') = tableByAntidiagonals (n - 1)

-- Longest chain is given by A094727.
-- King analog: A071945
a334016T :: Integer -> Integer -> Integer
a334016T = chessMoveCounter visibleCells where
    visibleCells n k = concatMap (\f -> f n k) [queenN, queenNW, queenSW]
