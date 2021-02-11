module AlecAirport.A284916 (a284916) where
import Data.List (find, nub)
import Data.Set (Set)
import qualified Data.Set as Set
import Helpers.ListHelpers (allDistinct)
-- Lexicographically earliest sequence of positive integers such that the same (Euclidean) distance does not occur twice between any two distinct pairs of points.

a284916 n = map snd a284916_list !! (n - 1)

a284916_list = (0,1) : recurse 1 Set.empty where
  recurse i knownDistances = (i, nextTerm) : recurse (i + 1) (foldr Set.insert knownDistances (newDistances nextTerm)) where
    newDistances a_i = map (\(j, a_j) -> (i - j)^2 + (a_i - a_j)^2) $ take i a284916_list
    nextTerm = head $ filter noDuplicateDistances [1..] where
      noDuplicateDistances a_k = notEquidistantToTwoPoints && distinctDistance where
        newDistances' = newDistances a_k
        distinctDistance = all (`Set.notMember` knownDistances) newDistances'
        notEquidistantToTwoPoints = allDistinct newDistances'

-- 1,1,2,5,9,14,7,19,25,2,33,43,54,67,27,47,64,78
-- ALSO: Earliest such that (a(n) - a(m), n - m) is distinct for each pair (n, m) such that n != m.
-- ALSO: Earliest such that (a(n) - a(m), n - m) is distinct for each pair (n, m) such that n > m.

-- d(p_1, p_2) = 1         = 1
-- d(p_1, p_3) = 2^2 + 1^2 = 5
-- d(p_2, p_3) = 1^2 + 1^2 = 2

-- a(1) = 1
-- a(2) = 1
-- a(3) != 1 (because then d(p_1, p_2) == d(p_2, p_3))
-- a(3) = 2

-- a(4) != 1 or else d(p_2, p_3) = d(p_3, p_4)
-- a(4) != 2 or else d(p_1, p_2) = d(p_3, p_4)
-- a(4) != 3 or else d(p_2, p_3) = d(p_3, p_4)
-- a(4) != 4 or else d(p_1, p_3) = d(p_3, p_4)
-- a(4) = 5
