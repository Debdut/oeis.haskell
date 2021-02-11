module Miscellaneous.A293030  where
import Helpers.Table (tableByAntidiagonals)
import Data.Set (Set)
import qualified Data.Set as Set
--   a(n, 1) is the least positive integer not in a previous row.
-- This sequence is a permutation of the natural numbers.
-- Array begins:
-- 1   2   4   5   10  11  13  14  28  29 ...
-- 3   6   7   12  15  16  19  30  33  34 ...
-- 8   9   17  18  20  21  35  36  44  45 ...
-- 22  23  25  26  49  50  52  53  58  59 ...
-- 24  27  51  54  60  63  64  67  73  76 ...
-- 65  66  68  69  74  75  77  78  146 147 ...
-- 70  71  79  80  151 152 160 161 178 179 ...
-- 72  81  153 162 180 189 192 193 196 201 ...
-- 194 195 197 198 203 204 206 207 221 222 ...
-- 208 209 211 212 235 236 238 239 451 452 ...

-- First column:
-- 1,3,8,22,24,65,70,72,194,208,210,215,580,582,623,628,630,644,1738,1740,1745,1867,1869,1883,1888,1890,1931,5212,5214,5219,5233,5235,5600,5605,5607,5648,5662,5664,5669,5791,5793,15635,15640,15642,15656,15697,15699,15704,16798,16800,16814,16819,16821,16943,16984,16986,16991,17005,17007,17372,17377,17379,46904,46918,46920,46925,46966,46968,47090,47095,47097,47111,50392,50394,50399,50440,50442,50456,50461,50463,50828,50950,50952,50957,50971,50973,51014,51019,51021,52115,52129,52131,52136
a293030 :: Int -> Int
a293030 t = a293030_rows !! k !! n where
  (n, k) = tableByAntidiagonals (t - 1)

a293030_rows :: [[Int]]
a293030_rows = recurse 1 [1..] where
  recurse n legalTerms = nextRow : recurse (n + 1) newLegalTerms where
    nextRow = arithmeticFreeSequence legalTerms
    newLegalTerms = deleteTermsFrom legalTerms nextRow

-- minuend - subtrahend
-- Works under the assumption that both lists are increasing.
deleteTermsFrom :: [Int] -> [Int] -> [Int]
deleteTermsFrom m [] = m
deleteTermsFrom [] _ = []
deleteTermsFrom minuend@(i:is) subtrahend@(j:js)
  | i < j  = i : deleteTermsFrom is subtrahend
  | i == j = deleteTermsFrom is js
  | i > j  = deleteTermsFrom minuend js

arithmeticFreeSequence :: [Int] -> [Int]
arithmeticFreeSequence validTerms = recurse validTerms Set.empty where
  recurse (v:vs) knownTerms
    | isArithmeticFree v knownTerms = v : recurse vs (Set.insert v knownTerms)
    | otherwise                     = recurse vs knownTerms

isArithmeticFree :: Int -> Set Int -> Bool
isArithmeticFree i knownTerms = all isFree knownTerms where
  isFree j = (2*j - i)  `Set.notMember` knownTerms
