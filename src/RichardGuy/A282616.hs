module RichardGuy.A282616 (a282616) where
import Helpers.RichardGuy (enumerateA104429, isSelfConjugate)

a282616 :: Int -> Int
a282616 = length . enumerateA282616

enumerateA282616 :: Int -> [[(Int, Int, Int)]]
enumerateA282616 n = filter (isSelfConjugate n) $ enumerateA104429 n
