module Minecraft.A309978 (a309978) where
import Minecraft.A328446 (a328446_row)

a309978 :: Int -> Int
a309978 1 = 0 -- k + k^0 = 1 for k = 0, but for no positive integers k.
a309978 n = length $ a328446_row n
