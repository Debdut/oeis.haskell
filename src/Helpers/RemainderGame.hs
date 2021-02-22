module Helpers.RemainderGame (shrinkingDivisorIterations) where

shrinkingDivisorIterations :: Int -> Int -> Integer
shrinkingDivisorIterations n k = iterationCount k 0 where
  iterationCount 0 i = i
  iterationCount b i = iterationCount (n `mod` b) (i + 1)

