module Miscellaneous.A265389 (a265389) where
import Data.List (delete)

a265389 :: Int -> Integer
a265389 n = a265389_list !! (n - 1)

a265389_list :: [Integer]
a265389_list = nextTerm [1..] where
  nextTerm remaining = h : nextTerm remaining' where
    part = splitAt 3 remaining
    h = sum $ fst part
    remaining' = delete h $ snd part
