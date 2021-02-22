module HelperSequences.A060432 (a060432) where
import HelperSequences.A003056
import HelperSequences.A000330
import HelperSequences.A057944

a060432 :: Int -> Integer
a060432 n = a000330 k + (k + 1) * (n' - a057944 n') where
  k = toInteger $ a003056 n
  n' = toInteger n
