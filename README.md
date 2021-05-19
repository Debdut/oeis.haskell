# oeis.haskell [![Generic badge](https://img.shields.io/twitter/follow/KarmakarDebdut?style=social)](https://twitter.com/KarmakarDebdut)

![Generic badge](https://img.shields.io/badge/build-success-brightgreen.svg) ![Generic badge](https://img.shields.io/badge/tests-100%25-brightgreen.svg)

> _Collection of OEIS Number Sequences in Haskell_

## Samples

### Hypercube Colorings

- [A333333](/src/HypercubeColorings/A333333.hs) - Irregular triangle: T(n,k) gives the number of k-polysticks on edges of the n-cube up to isometries of the n-cube, with 0 <= k <= A001787(n)

```hs
module HypercubeColorings.A333333 (a333333) where
import Helpers.HypercubeColorings (countPolyforms)

a333333_row :: Int -> [Int]
a333333_row n = map (a333333T n) [0..n*2^(n-1)]

a333333T :: Int -> Int -> Int
a333333T n = countPolyforms n 1

a333333_list :: [Int]
a333333_list = concatMap a333333_row [1..]

a333333 :: Int -> Int
a333333 n = a333333_list !! (n - 1)

```


### Tilings

- [A303930](/src/Tiling/A303930.hs) - Count leaf-free subgraphs of the 2 X n grid up to horizontal and vertical flipping

```hs
module Tiling.A303930 where

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
```

## Contents

- [Anagram](/src/Anagram)
- [Binary](/src/Binary)
- [Braxton](/src/Braxton)
- [BrickStacking](/src/BrickStacking)
- [Chess](/src/Chess)
- [Coins](/src/Coins)
- [CoinsInARow](/src/CoinsInARow)
- [ConcavePolygon](/src/ConcavePolygon)
- [ConvexPolygon](/src/ConvexPolygon)
- [CostasLikeArrays](/src/CostasLikeArrays)
- [Delahaye](/src/Delahaye)
- [DistinctMidpoints](/src/DistinctMidpoints)
- [DoubleOrIncrement](/src/DoubleOrIncrement)
- [EKG](/src/EKG)
- [External](/src/External)
- [Graham](/src/Graham)
- [GridPolytopes](/src/GridPolytopes)
- [HelperSequences](/src/HelperSequences)
- [Helpers](/src/Helpers)
- [HeronianTriangles](/src/HeronianTriangles)
- [HypercubeColorings](/src/HypercubeColorings)
- [IntegerTriangles](/src/IntegerTriangles)
- [KthDifferences](/src/KthDifferences)
- [Minecraft](/src/Minecraft)
- [Miscellaneous](/src/Miscellaneous)
- [NestedRoots](/src/NestedRoots)
- [Nonpalindromes](/src/Nonpalindromes)
- [Palindromes](/src/Palindromes)
- [Permutations](/src/Permutations)
- [PolygonSizes](/src/PolygonSizes)
- [Polynomial](/src/Polynomial)
- [Poset](/src/Poset)
- [PowerDivisibility](/src/PowerDivisibility)
- [ProjectEuler](/src/ProjectEuler)
- [RemainderGame](/src/RemainderGame)
- [RichardGuy](/src/RichardGuy)
- [SqrtMultiples](/src/SqrtMultiples)
- [Staircase](/src/Staircase)
- [StoneTransfer](/src/StoneTransfer)
- [SubprimeFib](/src/SubprimeFib)
- [Subsets](/src/Subsets)
- [TableDifferences](/src/TableDifferences)
- [Tables](/src/Tables)
- [Tiling](/src/Tiling)
- [ToiletPaper](/src/ToiletPaper)
- [Walk](/src/Walk)
- [XorTriangle](/src/XorTriangle)


## Sources

The sequence definitons are from The Online Encyclopedia of Integer Sequences - visit [OEIS](https://oeis.org)

## Help Me Please 🥲

<a href="https://www.buymeacoffee.com/debdut" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>

Follow me on [Twitter](https://twitter.com/KarmakarDebdut)
