module StoneTransfer.A292726 (a292726, a292726_list) where
import Data.List (delete, nub, sort, null)
import Data.Set (Set)
import qualified Data.Set as Set
import Data.IntMap.Strict (IntMap, toList, adjust, fromList)
-- The best structure for this would probably be a Scala-like Map[Int, Int],
-- which behaves like a histogram.
-- This is much slower than the Ruby implementation.

-- TODO: Implement A292727, A292729, and A292836.
a292726 n = length $ enumerateFrom $ fromList $ (1, n) : map (\i -> (i, 0)) [2..n]
a292726_list = map a292726 [1..]

type State = IntMap Int

-- Given a state return all possible child states. For example:
-- nextGeneration (3, 3, 2, 1, 1)
-- => [(6, 2, 1, 1), (5, 2, 1, 1, 1), (4, 2, 2, 1, 1), (3, 3, 2, 2)]
nextGeneration :: State -> [State]
nextGeneration currentGen = concatMap (`descendants` currentGen) $ multiples currentGen where
  multiples as = map fst $ filter (\(_, count) -> count >= 2) $ toList as
  descendants pileSize currentGen = map (transferStones pileSize currentGen) [1..pileSize] where
    transferStones pileSize currentGen n = foldr (uncurry adjust) currentGen changeSet where
      changeSet = [(subtract 2, pileSize), ((+1), pileSize - n), ((+1), pileSize + n)]

enumerateFrom :: State -> Set State
enumerateFrom initialGeneration = recurse [initialGeneration] Set.empty where
  recurse :: [State] -> Set State -> Set State
  recurse currentGen ledger = if null newGen then updatedLedger else recurse newGen updatedLedger where
    newGen = filter ( `Set.notMember` ledger) $ concatMap nextGeneration currentGen
    updatedLedger = insertList currentGen ledger

insertList list set = foldr Set.insert set list
