module Delahaye.A337946 (a337946_list, a337946) where
import Helpers.Delahaye (delahayeList, column)
import Data.Set (Set)
import qualified Data.Set as Set

a337946 :: Int -> Integer
a337946 n = a337946_list !! (n-1)

a337946_list :: [Integer]
a337946_list = delahayeList 1 (Set.fromList [1,2]) validA337946 updateA337946Table

-- validA337946 :: ExtensionCriteria (Set Integer, Set Integer)
validA337946 knownTerms table k = disjointColumns && trivialIntersection where
  aColumn = column (+) knownTerms k
  mColumn = column (*) knownTerms k
  disjointColumns = Set.disjoint aColumn mColumn
  newValues = Set.union aColumn mColumn
  trivialIntersection = Set.disjoint table newValues

-- updateA337946Table :: TableUpdate (Set Integer, Set Integer)
updateA337946Table k knownTerms table = table' where
  table' = foldr1 Set.union [table, column (+) knownTerms k, column (*) knownTerms k]
