module HelperSequences.A002024 (a002024) where
import Data.List (genericIndex, genericReplicate)
-- This is a slow proof-of-concept. This can be computed with less complexity as:
-- floor(sqrt(2n) + 1/2).

a002024 :: Integral a => a -> a
a002024 n = genericIndex a002024_list (n - 1)

a002024_list :: Integral a => [a]
a002024_list = remaining 1 where
  remaining n = genericReplicate n n ++ remaining (n + 1)
