module Chess.A334001 (a334001) where
import Chess.A279212 (a279212T)

a334001 :: Integer -> Int
a334001 n = length $ filter odd $ map (`a279212T` n) [1..2*n]
