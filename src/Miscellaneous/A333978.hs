module Miscellaneous.A333978 (a333978, a333978_list) where
import Data.List (nub, sort, partition)
import Data.Maybe( Maybe(..) )

a333978 :: Int -> Integer
a333978 n = a333978_list !! (n - 1)

a333978_list :: [Integer]
a333978_list = 1 :recurse 2 allGenerations [] where
  recurse n (g:gen) leftovers = nextChunk ++ recurse (n+1) gen leftovers' where
    nextChunk = nub $ sort (gS ++ lS)
    leftovers' = gL ++ lL
    (gS, gL) = partition (<2^n) g
    (lS, lL) = partition (<2^n) leftovers

allGenerations :: [[Integer]]
allGenerations = map (map fst) $ iterate nextGeneration [(2,[2])]

nextGeneration :: [(Integer, [Integer])] -> [(Integer, [Integer])]
nextGeneration as = as' ++ as'' where
  as' = map (\(p, ls@(l:_)) -> (p*l,l:ls)) as
  as'' = map (\(p, ls@(l:_)) -> (p*(l+1),(l+1):ls)) as
