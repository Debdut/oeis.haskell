module Anagram.A279963 (a279963, a279963_list) where
import Helpers.AnagramHelper (knIsBaseBAnagramOfN)

a279963 :: Int -> Integer
a279963 n = a279963_list !! (n - 1)

a279963_list :: [Integer]
a279963_list = 0 : filter multipleIsAnagram [1..]

-- Rules for n and kn to be anagrams in base b:
  -- 2 < b < n
  -- 1 < k < b
multipleIsAnagram :: Integer -> Bool
multipleIsAnagram n = any (knIsBaseBAnagramOfN n) choices where
  choices = [(b, k) | b <- [2..n-2], k <- [2..b - 1]]

-- We can actually be a bit more clever:
-- If n and kn are anagrams, then (k-1)n must be divisible by (b-1)
-- Therefore for a given k, we only need to check bases that are one greater
-- than a non-trivial factor of (k-1)n.
