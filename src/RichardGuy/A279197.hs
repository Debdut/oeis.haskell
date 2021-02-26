module RichardGuy.A279197 (a279197) where
import Helpers.RichardGuy (enumerateA104429, isInseparable, also, isSelfConjugate)

a279197 :: Int -> Int
a279197 = length . enumerateA279197

enumerateA279197 :: Int -> [[(Int, Int, Int)]]
enumerateA279197 n = filter (isInseparable `also` isSelfConjugate n) $ enumerateA104429 n
