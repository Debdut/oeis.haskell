module HelperSequences.A143480 (a143480) where
import Data.List (find, genericIndex)
import Data.Maybe (fromJust)
import HelperSequences.A000010 (a000010)

a143480 :: Integral a => a -> a
a143480 n = genericIndex a143480_list (n - 1)

-- a(1)=1. a(n) is the smallest n * k such that phi(n * k) > phi(a(n-1))
a143480_list :: Integral a => [a]
a143480_list = 1 : recurse 2 where
  recurse i = a_i : recurse (i + 1) where
    a_i = fromJust $ find f $ map (i *) [1..] where
      f k = m < a000010 k
      m = a000010 $ a143480 (i - 1)
