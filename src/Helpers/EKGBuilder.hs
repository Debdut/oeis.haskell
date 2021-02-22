module Helpers.EKGBuilder (buildEKG) where

import Data.List (find, delete, (\\))
import Data.Maybe (fromJust)

buildEKG :: Integral a => [a] -> [a]
buildEKG seed = seed ++ ekg (last seed) ([1..] \\ seed) where
  ekg k l = k' : ekg k' (delete k' l) where
    k' = fromJust $ find ((1 /=) . gcd k) l
