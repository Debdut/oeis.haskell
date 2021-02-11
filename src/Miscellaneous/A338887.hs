module Miscellaneous.A338887 (a338887) where
import Helpers.Primes (divisors)
import Data.Set (Set)
import qualified Data.Set as Set

a338887 :: Integer -> Int
a338887 n = Set.size $ Set.fromList [x + y * z | z <- [1..n-1], x <- divisors $ n - z, y <- [(n - z) `div` x]]
