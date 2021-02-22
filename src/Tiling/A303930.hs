module Tiling.A303930 where

-- Count leaf-free subgraphs of the 2 X n grid up to horizontal and vertical flipping.
-- https://oeis.org/A020876

-- Ten for n = 4:
-- +   +   +   +  ┌───┐   +   +  +   ┌───┐   +  ┌───┐   ┌───┐  ┌───────┐   +  ┌───────┬───┐  ┌───────────┐  ┌───┬───┬───┐  ┌───┬───┬───┐  ┌───┬───┐   +
--                │   │              │   │      │   │   │   │  │       │      │       │   │  │           │  │   │   │   │  │   │   │   │  │   │   │
-- +   +   +   +, └───┘   +   +, +   └───┘   +, └───┘   └───┘, └───────┘   +, └───────┴───┘, └───────────┘, └───┴───┴───┘, └───┘   └───┘, └───┴───┘   +.

a303930 :: Int -> Integer
a303930 n = a303930_list !! (n - 1)

-- A303930
a303930_list :: [Integer]
a303930_list = map (`div` 4) sumOfOrbits where
  sumOfOrbits = foldr (zipWith (+)) allCount [rotationalCount, horizontalCount, verticalCount]

-- A093129
allCount :: [Integer]
allCount = 1 : 2 : recurse 1 2 where
  recurse a b = nextTerm : recurse b nextTerm where
    nextTerm = 5 * (b - a)

-- A001519
verticalCount :: [Integer]
verticalCount = 1 : 2 : recurse 1 2 where
  recurse a b = nextTerm : recurse b nextTerm where
    nextTerm = 3 * b - a

horizontalCount :: [Integer]
horizontalCount = 1 : 2 : 3 : 7 : recurse 1 2 3 7 where
  recurse a b c d = nextTerm : recurse b c d nextTerm where
    nextTerm = 5 * (c - a)

rotationalCount :: [Integer]
rotationalCount = 1 : 2 : 3 : 5 : recurse 1 2 3 5 where
  recurse a b c d = nextTerm : recurse b c d nextTerm where
    nextTerm = 5 * (c - a)

-- Horiztonal:
-- Even: {{00, 01, 10, 11, 11, 12, 21, 22}}
-- Odd: {{00, 01, 10, 11, 11}}
-- Middle looks like:
-- ┳  ┄  ━  ━  ┄
-- ┻  ━  ┄  ━  ┄
-- 1 1
-- 2 2
-- 3 3
-- 4 7
-- 5 10
-- 6 25
-- 7 35
-- 8 90
-- 9 125
-- 10 325
--
-- Vertical (A001519)
-- Paritions, with {1, 1', 2, 3, 4, ...}
-- 1 1
-- 2 2
-- 3 5
-- 4 13
-- 5 34
-- 6 89
-- 7 233
-- 8 610
-- 9 1597
-- 10 4181
--
-- 180:
-- Initial conditions:
-- Even: {{00, 11, 11, 22}}
-- Odd: {{00, 01, 10, 11, 11}}
-- 1 1
-- 2 2
-- 3 3
-- 4 5
-- 5 10
-- 6 15
-- 7 35
-- 8 50
-- 9 125
-- 10 175
--
-- All (A093129)
-- 1 1
-- 2 2
-- 3 5
-- 4 15
-- 5 50
-- 6 175
-- 7 625
-- 8 2250
-- 9 8125
-- 10 29375
