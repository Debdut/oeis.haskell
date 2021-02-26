module RichardGuy.A282619 (a282619) where
import Helpers.RichardGuy (enumerateA104429, nonSelfConjugate)

a282619 :: Int -> Int
a282619 = length . enumerateA282619

enumerateA282619 :: Int -> [[(Int, Int, Int)]]
enumerateA282619 n = filter (nonSelfConjugate n) $ enumerateA104429 n
