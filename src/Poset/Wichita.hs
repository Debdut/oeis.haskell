module Poset.Wichita (children, extractSingletonSet, parents, wichitaRanks) where
import Data.MemoCombinators (integral)
import Data.Set (Set)
import qualified Data.Set as Set
import Helpers.Primes (distinctPrimeFactors, divisors, isPrime)
import Helpers.SetHelpers (flatMap)

wichitaRanks n = recurse $ Set.singleton n where
  recurse rankLevel
    | 1 `Set.member` rankLevel = [Set.singleton 1]
    | otherwise = rankLevel : recurse rankLevel' where
      rankLevel' = flatMap children rankLevel

children = integral children' where
  children' n = Set.fromList $ map (\p -> n - n `div` p) $ distinctPrimeFactors n

parents = integral parents' where
  parents' n = Set.fromList $ map up $ filter (isPrime . (+1)) $ divisors n where
    up d = n `div` d * (d + 1)

extractSingletonSet s = if Set.size s == 1 then Set.findMax s else error "Not a singleton set!"
