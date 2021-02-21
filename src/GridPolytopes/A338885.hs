module GridPolytopes.A338885 (a338885, a338885_row) where
import Helpers.Primes (divisors)
import Data.Set (Set)
import qualified Data.Set as Set
-- https://codegolf.stackexchange.com/q/213754/53884
a338885_row :: Integer -> [Integer]
a338885_row n = Set.toAscList $ Set.fromList factorProducts where
  factorProducts = [d + (i * (n - i) `div` d) | i <- [1..n `div` 2], d <- divisors $ i * (n - i)]

a338885_list :: [Integer]
a338885_list = concatMap a338885_row [2..]

a338885 :: Int -> Integer
a338885 n = a338885_list !! (n - 2)
