module HelperSequences.A000041 (a000041) where
import Data.List (genericIndex)
import Data.MemoCombinators (memo2, integral)

a000041 = genericIndex a000041_list

a000041_list = map (p' 1) [0..] where
  p' = memo2 integral integral p
  p _ 0 = 1
  p k m = if m < k then 0 else p' k (m - k) + p' (k + 1) m
  -- Reinhard Zumkeller, Nov 03 2015, Nov 04 2013
