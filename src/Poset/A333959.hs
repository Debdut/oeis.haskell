module Poset.A333959 (a333959) where
import Poset.A334144 (a334144_list)
import Data.List (elemIndex)

a333959 n = a_n + 1 where
  Just a_n = elemIndex n a334144_list
