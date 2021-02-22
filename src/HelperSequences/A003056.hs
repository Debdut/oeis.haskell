module HelperSequences.A003056 (a003056) where
import HelperSequences.A002024 (a002024)

a003056 :: Integral a => a -> a
a003056 n = a002024 (n + 1) - 1
