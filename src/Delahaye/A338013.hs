module Delahaye.A338013 (a338013_list, a338013) where
import Delahaye.A338012 (a338012_list)
import Helpers.Delahaye (missingFromTables)
import Data.Set (Set)
import qualified Data.Set as Set

a338013 :: Int -> Integer
a338013 n = a338013_list !! (n-1)

a338013_list :: [Integer]
a338013_list = missingFromTables [(+), (*)] a338012_list
