module Poset.A073933 (a073933) where
import Poset.Wichita (wichitaRanks)

a073933 :: Integer -> Int
a073933 = length . wichitaRanks
