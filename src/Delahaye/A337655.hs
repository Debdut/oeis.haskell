module Delahaye.A337655 (a337655_list, a337655) where
import Helpers.Delahaye (delahayeList, column)
import Data.Set (Set)
import qualified Data.Set as Set

a337655 :: Int -> Integer
a337655 n = a337655_list !! (n-1)

a337655_list :: [Integer]
a337655_list = delahayeList 1 (Set.singleton 2, Set.singleton 1) validA337655 updateA337655Table

-- validA337655 :: ExtensionCriteria (Set Integer, Set Integer)
validA337655 knownTerms (aTable, mTable) k = trivialIntersectionA && trivialIntersectionM where
  trivialIntersectionA = Set.disjoint aTable (column (+) knownTerms k)
  trivialIntersectionM = Set.disjoint mTable (column (*) knownTerms k)

-- updateA337655Table :: TableUpdate (Set Integer, Set Integer)
updateA337655Table k knownTerms (aTable, mTable) = (aTable', mTable') where
  aTable' = Set.union aTable (column (+) knownTerms k)
  mTable' = Set.union mTable (column (*) knownTerms k)
