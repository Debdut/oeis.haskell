module RichardGuy.A282615 (a282615) where
import Helpers.RichardGuy (enumerateA104429, isSeparable, also, isSelfConjugate)

a282615 :: Int -> Int
a282615 = length . enumerateA282615

enumerateA282615 :: Int -> [[(Int, Int, Int)]]
enumerateA282615 n = filter (isSeparable `also` isSelfConjugate n) $ enumerateA104429 n
