module Miscellaneous.A259439 (a259439) where
import HelperSequences.A143482 (a143482)

a259439 :: Integral a => a -> a
a259439 n = a143482 n `div` n
