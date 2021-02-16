module External.A143481 (a143481) where
import HelperSequences.A000010 (a000010)
import HelperSequences.A143480 (a143480)

a143481 :: Integral a => a -> a
a143481 = a000010 . a143480
