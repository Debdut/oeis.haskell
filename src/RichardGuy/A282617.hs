module RichardGuy.A282617 (a282617) where
import Helpers.RichardGuy (enumerateA104429, isInseparable, also, nonSelfConjugate)

a282617 :: Int -> Int
a282617 = length . enumerateA282617

enumerateA282617 :: Int -> [[(Int, Int, Int)]]
enumerateA282617 n = filter (isInseparable `also` nonSelfConjugate n) $ enumerateA104429 n
