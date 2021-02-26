module Delahaye.A337658 (a337658_list, a337658) where
import Delahaye.A337655 (a337655_list)
import Helpers.Delahaye (missingFromTables)
import Data.Set (Set)
import qualified Data.Set as Set

a337658 :: Int -> Integer
a337658 n = a337658_list !! (n-1)

a337658_list :: [Integer]
a337658_list = missingFromTables [(+)] a337655_list
