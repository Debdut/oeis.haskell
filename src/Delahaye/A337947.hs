module Delahaye.A337947 (a337947_list, a337947) where
import Delahaye.A337946 (a337946_list)
import Helpers.Delahaye (missingFromTables)
import Data.Set (Set)
import qualified Data.Set as Set

a337947 :: Int -> Integer
a337947 n = a337947_list !! (n-1)

a337947_list :: [Integer]
a337947_list = missingFromTables [(+), (*)] a337946_list
