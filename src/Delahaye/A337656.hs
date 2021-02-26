module Delahaye.A337656 (a337656_list, a337656) where
import Helpers.Delahaye (delahayeList, column)
import Data.Set (Set)
import qualified Data.Set as Set

a337656 :: Int -> Integer
a337656 n = a337656_list !! (n-1)

a337656_list :: [Integer]
a337656_list = delahayeList 0 (Set.singleton 0, Set.singleton 0) validA337656 updateA337656Table

-- validA337656 :: ExtensionCriteria (Set Integer, Set Integer)
validA337656 knownTerms (aTable, mTable) k = trivialIntersectionA && trivialIntersectionM where
  trivialIntersectionA = Set.disjoint aTable (column (+) knownTerms k)
  trivialIntersectionM = Set.singleton 0 == Set.intersection mTable (column (*) knownTerms k)

-- updateA337656Table :: TableUpdate (Set Integer, Set Integer)
updateA337656Table k knownTerms (aTable, mTable) = (aTable', mTable') where
  aTable' = Set.union aTable (column (+) knownTerms k)
  mTable' = Set.union mTable (column (*) knownTerms k)
