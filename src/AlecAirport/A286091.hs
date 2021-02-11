module AlecAirport.A286091 (a286091_list, a286091) where
import Data.Ratio ((%), Ratio)
import Data.List (genericTake)
import Data.Set (Set)
import qualified Data.Set as Set


a286091 :: Int -> Integer
a286091 n = a286091_list !! (n - 1)

a286091_list :: [Integer]
a286091_list = map snd parallelFreeList

parallelFreeList :: [(Integer, Integer)]
parallelFreeList = recurse 1 Set.empty where
  recurse i knownSlopes = (i, nextTerm) : recurse (i + 1) newSlopes where
    newSlopes = foldr Set.insert knownSlopes $ nextGenSlopes nextTerm
    nextGenSlopes a_i = map (slopeBetween (i, a_i)) $ genericTake (i - 1) parallelFreeList
    nextTerm = head $ filter notExistingSlope [1..] where
      notExistingSlope a_i = all (`Set.notMember` knownSlopes) $ nextGenSlopes a_i

slopeBetween :: Integral a => (a, a) -> (a, a) -> Ratio a
slopeBetween (x_0, y_0) (x_1, y_1) = (y_0 - y_1) % (x_0 - x_1)
