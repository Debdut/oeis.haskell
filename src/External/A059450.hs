module External.A059450 (a059450) where
import Helpers.ChessSequences (chessMoveCounter, queenN, queenSW)
import Helpers.Table (tableByAntidiagonals)

a059450 :: Integer -> Integer
a059450 n = a059450T  (n' + 1) (k' + 1) where
    (n', k') = tableByAntidiagonals n

-- Longest chain is given by A094727.
-- King analog: A009766
a059450T :: Integer -> Integer -> Integer
a059450T = chessMoveCounter visibleCells where
    visibleCells n k = concatMap (\f -> f n k) [queenN, queenSW]
