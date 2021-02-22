module Helpers.Records (allMax, allMin, countMax, countMin, maxIndices) where

maxIndices :: Integral a => [a] -> [Int]
maxIndices [] = []
maxIndices (a:as) = 0 : remainder (zip [1..] as) a where
  remainder [] _ = []
  remainder ((i, a_i) : remainingPairs) maxTerm
    | a_i > maxTerm = i : remainder remainingPairs a_i
    | otherwise     = remainder remainingPairs maxTerm

countMax :: (a -> Int) -> [a] -> Int
countMax _ []     = 0
countMax f (a:as) = recurse 1 (f a) as where
  recurse count _        []     = count
  recurse count knownMax (x:xs)
    | f x == knownMax = recurse (count + 1) knownMax xs
    | f x < knownMax  = recurse       count knownMax xs
    | otherwise       = recurse           1    (f x) xs

allMax :: (a -> Int) -> [a] -> [a]
allMax _ []     = []
allMax f (a:as) = recurse [a] (f a) as where
  recurse known _ []  = known
  recurse known knownMax (x:xs)
    | f x == knownMax = recurse (x : known) knownMax xs
    | f x < knownMax  = recurse       known knownMax xs
    | otherwise       = recurse         [x]    (f x) xs

countMin :: (a -> Int) -> [a] -> Int
countMin _ []     = 0
countMin f (a:as) = recurse 1 (f a) as where
  recurse count _        []     = count
  recurse count knownMax (x:xs)
    | f x == knownMax = recurse (count + 1) knownMax xs
    | f x > knownMax  = recurse       count knownMax xs
    | otherwise       = recurse           1    (f x) xs

allMin :: (a -> Int) -> [a] -> [a]
allMin _ []     = []
allMin f (a:as) = recurse [a] (f a) as where
  recurse known _ []  = known
  recurse known knownMax (x:xs)
    | f x == knownMax = recurse (x : known) knownMax xs
    | f x > knownMax  = recurse       known knownMax xs
    | otherwise       = recurse         [x]    (f x) xs
