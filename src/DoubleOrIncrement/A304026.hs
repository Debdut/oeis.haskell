module DoubleOrIncrement.A304026 where
import Helpers.DoubleOrIncrement (numberOfGenerations)
-- The idea is to start with a pair (a, b), and count how many maps of
-- (x, y) |-> (x + 1, 2y) or
-- (x, y) |-> (2x, y + 1)
-- are necessary to make the values equal

a304026 :: Integer -> Int
a304026 n = numberOfGenerations (n, 0)
