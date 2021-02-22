module Helpers.HypercubeColorings (countPolyforms, countColorings) where
import Helpers.Subsets (choose)
import Helpers.SetHelpers (flatMap)
import Data.Set (Set)
import qualified Data.Set as Set

type Restriction = (Int, Int)
-- A m-facet of an n-hypercube is a choice of n-m pairs (k, b)
-- where k is in [n] and b is in {0,1}
type Face        = Set Restriction
type Coloring    = Set Face
type Polyform    = Coloring

countRestrictedColorings :: Int -> Int -> Int -> Set Coloring -> Int
countRestrictedColorings n m k = recurse 0 where
  recurse c colorings
    | Set.null colorings = c
    | otherwise          = recurse (c + 1) colorings' where
    colorings' = Set.difference colorings children where
      children = allSymmetries n $ minimum colorings

allSymmetries :: Int -> Polyform -> Set Polyform
allSymmetries n polyform = recurse (allRotations n) flipped where
  flipped = Set.fromList [polyform, flipFirst polyform]
  recurse [] symmetries = symmetries
  recurse (r:rs) symmetries = recurse rs s' where
    s' = Set.unions $ scanr (\_ b -> Set.map r b) symmetries [1..3]

allRotations :: Int -> [Polyform -> Polyform]
allRotations n = [rotation i j | i <- [1..n-1], j <- [i+1..n]]

rotation :: Int -> Int -> Polyform -> Polyform
rotation i j = Set.map $ Set.map (rotate i j) where
  rotate i j (k, b)
    | k == i    = (j, b)
    | k == j    = (i, 1 - b)
    | otherwise = (k, b)

flipFirst :: Polyform -> Polyform
flipFirst = Set.map (Set.map mirror) where
  mirror (k, b)
    | k == 1    = (k, 1 - b)
    | otherwise = (k, b)

---------------------------

-- poly-m-facet with k cells on an n-cube
countPolyforms :: Int -> Int -> Int -> Int
countPolyforms n m k = countRestrictedColorings n m k fixedPolyforms where
  fixedPolyforms = allPolyforms n k (Set.fromList $ map (\i -> (i,0)) [1..n-m])

-- A set of all k-polyforms on the n-cube containing the seed facet.
-- When k = 0, this should give the empty polyomino.
allPolyforms :: Int -> Int -> Face -> Set Polyform
allPolyforms n k seedFacet = recurse k (Set.singleton seedFacet) (connectedFacets n seedFacet) where
  recurse 0 polyform _ = Set.singleton Set.empty
  recurse 1 polyform _ = Set.singleton polyform
  recurse c polyform neighbors = flatMap f neighbors where
    f face = case addToPolyform n face (polyform, neighbors) of (p, ns) -> recurse (c - 1) p ns

addToPolyform :: Int -> Face -> (Polyform, Set Face) -> (Polyform, Set Face)
addToPolyform n facet (polyform, neighbors) = (newPolyform, updatedNeighbors) where
  newPolyform      = Set.insert facet polyform
  updatedNeighbors = Set.union neighbors (connectedFacets n facet) Set.\\ newPolyform

-- memoize this
connectedFacets :: Int -> Face -> Set Face
connectedFacets n facet = flatMap replaceFacet oneDeleted where
  newRestrictions = concatMap (`possibleRestrictions` facet) [1..n]
  oneDeleted = Set.map (`Set.delete` facet) facet
  replaceFacet f = Set.fromList $ map (`Set.insert` f) newRestrictions

possibleRestrictions :: Int -> Face -> [Restriction]
possibleRestrictions m facet = recurse $ Set.lookupGE (m, 0) facet where
  recurse Nothing = [(m, 0), (m, 1)]
  recurse (Just r@(n, _))
    | n == m    = []
    | otherwise = [(m, 0), (m, 1)]

-----------------------------
-- General colorings

countColorings :: Int -> Int -> Int -> Int
countColorings n m k = countRestrictedColorings n m k $ fixedColorings n m k

fixedColorings :: Int -> Int -> Int -> Set Coloring
fixedColorings n m k = Set.fromList $ map Set.fromList $ choose k $ allFaces n m

allFaces :: Int -> Int -> [Face]
allFaces n m = concatMap wreath $ choose (n - m) [1..n] where
  wreath []     = [Set.empty]
  wreath (l:ls) = zeroRestriction ++ oneRestriction where
    zeroRestriction = map (Set.insert (l,0)) $ wreath ls
    oneRestriction = map (Set.insert (l,1)) $ wreath ls
