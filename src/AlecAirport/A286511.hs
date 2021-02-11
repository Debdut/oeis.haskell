module AlecAirport.A286511 (a286511_list, a286511) where
import Data.Ratio ((%), Ratio)
import Data.List (genericTake, nub, (\\))
import Data.Set (Set)
import qualified Data.Set as Set
import Helpers.ListHelpers (allDistinct)

-- Lexicographically earliest sequence such that for each pair of integers (i, j) with i > j
-- the matrix [[i, a(i)], [j, a(j)]] has a distinct determinant.

a286511 :: Int -> Integer
a286511 n = a286511_list !! (n - 1)

a286511_list :: [Integer]
a286511_list = map snd uniqueDeterminantList

uniqueDeterminantList :: [(Integer, Integer)]
uniqueDeterminantList = recurse 1 Set.empty where
  recurse i knownSlopes = (i, nextTerm) : recurse (i + 1) newSlopes where
    newSlopes = foldr Set.insert knownSlopes $ nextGenSlopes nextTerm
    nextGenSlopes a_i = map (metricFunction (i, a_i)) $ genericTake (i - 1) uniqueDeterminantList
    nextTerm = head $ filter notExistingSlope [1..] where
      notExistingSlope a_i = all (`Set.notMember` knownSlopes) nextGeneration && allDistinct nextGeneration where
        nextGeneration = nextGenSlopes a_i

metricFunction :: (Integer, Integer) -> (Integer, Integer) -> Integer
metricFunction (x_0, y_0) (x_1, y_1) = x_0 * y_1 - x_1 * y_0
