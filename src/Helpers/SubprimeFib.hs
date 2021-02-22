module Helpers.SubprimeFib (largestValue, loopLength, loopPosition, subprimeFib) where
import HelperSequences.A117818 (a117818)
import Data.Set (Set)
import qualified Data.Set as Set
import Data.List (elemIndices)
import Data.Maybe (fromJust)

-- https://oeis.org/A214674
subprimeFib :: Integer -> Integer -> [Integer]
subprimeFib a b = a : b : remaining a b where
  remaining a' b' = nextElement : remaining b' nextElement where
    nextElement = a117818 (a' + b')

-- largestValue :: Integer -> Integer -> Integer
largestValue a b = maximum $ take distanceToSecondLoop fibSeq where
  fibSeq = subprimeFib a b
  distanceToSecondLoop = snd $ loopInfo fibSeq

loopLength :: Integer -> Integer -> Int
loopLength a b = case loopInfo $ subprimeFib a b of (i1, i2) -> i2 - i1

loopPosition :: Integer -> Integer -> Int
loopPosition a b = 1 + fst (loopInfo $ subprimeFib a b)

-- This gives the index of the first loop and the index of the second loop.
-- This allows us to derive the length of the loop.
loopInfo :: [Integer] -> (Int, Int)
loopInfo l = firstLoopIndices where
  loopPair = firstRepeatedPair l
  pairs = zip l (drop 1 l)
  firstLoopIndices = case take 2 $ elemIndices loopPair pairs of [i1, i2] -> (i1, i2)

firstRepeatedPair :: [Integer] -> (Integer, Integer)
firstRepeatedPair l = f pairs Set.empty where
  pairs = zip l (drop 1 l)
  f (p:ps) knownPairs
    | Set.member p knownPairs = p
    | otherwise               = f ps (Set.insert p knownPairs)
