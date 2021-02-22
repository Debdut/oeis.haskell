module Coins.A265414 (a265414) where
import Coins.A260643 (a260643_list)
import Data.List (elemIndex)
import Data.Maybe (fromJust)
-- "A265414" => "A265414 a(n) = point where A260643 for the first time obtains value n.",
a265414 :: Int -> Int
a265414 n = fromJust (elemIndex n a260643_list) + 1
