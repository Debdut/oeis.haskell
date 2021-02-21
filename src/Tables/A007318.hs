module Tables.A007318 (a007318, a007318_row, a007318_tabl) where
import Data.List (genericIndex)
import Helpers.Factorials (binomial)

a007318 :: Integral a => a -> a
a007318 = genericIndex a007318_tabl

a007318_row :: Integral a => a -> [a]
a007318_row n = map (binomial n) [0..n]

a007318_tabl :: Integral a => [a]
a007318_tabl = concatMap a007318_row [0..]
