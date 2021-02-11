module Miscellaneous.A261863 (a261863) where
import HelperSequences.A143480 (a143480)

a261863 :: Integral a => a -> a
a261863 n = a143480 n `div` n
