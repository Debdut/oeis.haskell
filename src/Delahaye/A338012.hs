module Delahaye.A338012 (a338012_list, a338012) where
import Helpers.Delahaye (delahayeList, column)
import Data.Set (Set)
import qualified Data.Set as Set

a338012 :: Int -> Integer
a338012 n = a338012_list !! (n-1)

a338012_list :: [Integer]
a338012_list = delahayeList 0 (Set.singleton 0) validA338012 updateA338012Table

-- validA338012 :: ExtensionCriteria (Set Integer, Set Integer)
validA338012 knownTerms table k = disjointColumns && trivialIntersection where
  aColumn = column (+) knownTerms k
  mColumn = column (*) knownTerms k
  disjointColumns = Set.disjoint aColumn mColumn
  newValues = Set.union aColumn mColumn
  trivialIntersection = Set.singleton 0 == Set.intersection table newValues

-- updateA338012Table :: TableUpdate (Set Integer, Set Integer)
updateA338012Table k knownTerms table = table' where
  table' = foldr1 Set.union [table, column (+) knownTerms k, column (*) knownTerms k]
