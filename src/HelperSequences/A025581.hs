module HelperSequences.A025581 (a025581) where
import HelperSequences.A003056 (a003056)
import HelperSequences.A002262 (a002262)

a025581 :: Integral a => a -> a
a025581 n = a003056 n - a002262 n
