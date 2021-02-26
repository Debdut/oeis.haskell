module RichardGuy.A282618 (a282618) where
import Helpers.RichardGuy (enumerateA104429, isSeparable, also, nonSelfConjugate)

a282618 :: Int -> Int
a282618 = length . enumerateA282618

enumerateA282618 :: Int -> [[(Int, Int, Int)]]
enumerateA282618 n = filter (isSeparable `also` nonSelfConjugate n) $ enumerateA104429 n
