module HelperSequences.A070939 (a070939) where

a070939 :: Integral a => a -> a
-- This isn't tail recursive!
a070939 n
  | n < 2     = 1
  | otherwise = a070939 (n `div` 2) + 1
