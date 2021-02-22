module Coins.A047932 (a047932) where
import Data.List (genericReplicate, genericIndex)
import Helpers.ListHelpers (concatReplicate)

a047932 :: Integral a => a -> a
a047932 n = genericIndex a047932_list (n - 1)

a047932_list :: Integral a => [a]
a047932_list = scanl1 (+) $ [0,1,2,2,2] ++ remainder 0

remainder :: Integral a => a -> [a]
remainder n = sideA ++ sideB ++ remainingSides ++ remainder (n + 1) where
  sideA = 2 : genericReplicate (n + 1) 3
  sideB = 2 : genericReplicate n 3
  remainingSides = concatReplicate 4 sideA
