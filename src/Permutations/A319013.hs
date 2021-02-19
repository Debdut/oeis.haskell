module Permutations.A319013 (a319013, a319013_list) where

a319013 :: Int -> Integer
a319013 n = a319013_list !! (n - 1)

a319013_list :: [Integer]
a319013_list = recurse 0 0 where
  recurse n a_n = nextTerm : recurse (n+1) nextTerm where
    nextTerm = (n + 1) * a_n + n^2
