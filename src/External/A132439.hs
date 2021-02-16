module External.A132439 (a132439) where
import Helpers.ChessSequences (chessMoveCounter, queenN, queenNW, queenW)
import Helpers.Table (tableByAntidiagonals)

a132439 :: Integer -> Integer
a132439 n = a132439T  (n' + 1) (k' + 1) where
    (n', k') = tableByAntidiagonals (n - 1)

-- Longest chain is given by A002024
-- King analog: A008288
a132439T :: Integer -> Integer -> Integer
a132439T = chessMoveCounter visibleCells where
    visibleCells n k = concatMap (\f -> f n k) [queenN, queenNW, queenW]
