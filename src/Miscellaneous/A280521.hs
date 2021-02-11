module Miscellaneous.A280521 (a280521) where
import HelperSequences.A066628 (a066628)

a280521 :: Integer -> Integer
a280521 n = go n 0 where
  go 0 counter = counter
  go k counter = go (a066628 $ k + 1) $ counter + 1
