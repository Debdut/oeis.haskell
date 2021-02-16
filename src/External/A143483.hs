module External.A143483 (a143483) where
import HelperSequences.A000010 (a000010)
import HelperSequences.A143482 (a143482)

a143483 :: Integral a => a -> a
a143483 = a000010 . a143482
