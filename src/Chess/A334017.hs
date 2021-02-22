module Chess.A334017 (a334017) where
import Helpers.ChessSequences (chessMoveCounter, queenN, queenW, queenSW)
import Helpers.Table (tableByAntidiagonals)

a334017 :: Integer -> Integer
a334017 n = a334017T  (n' + 1) (k' + 1) where
    (n', k') = tableByAntidiagonals (n - 1)

-- Longest chain is given by A094727.
-- King analog: A033877
a334017T :: Integer -> Integer -> Integer
a334017T = chessMoveCounter visibleCells where
    visibleCells n k = concatMap (\f -> f n k) [queenN, queenW, queenSW]
