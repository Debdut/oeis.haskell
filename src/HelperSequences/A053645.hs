module HelperSequences.A053645 (a053645) where
import HelperSequences.A000523 (a000523)

a053645 :: Integer -> Integer
a053645 n = n `mod` (2 ^ a000523 n)
