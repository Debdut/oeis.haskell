module Tables.A272327 (a272327, a272327T) where
import Helpers.Table (tableByAntidiagonals)
import Data.Maybe (fromJust)
import Data.List (find)

a272327 :: Integral a => a -> a
a272327 m =  a272327T (n + 1) (k + 1) where
  (n, k) = tableByAntidiagonals (m - 1)

a272327T :: Integral a => a -> a -> a
a272327T n k = fromJust $ find (\i -> i^k `mod` n == 0) [n + 1..]
