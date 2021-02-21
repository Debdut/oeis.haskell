module BrickStacking.A320314 where
import Data.List (nub, sort)

type Row = [Int]
type Stack = [Row]
type Stacks = [Stack]

allStacksFrom :: Stacks -> [Stacks]
allStacksFrom = recurse where
  recurse stacks = stacks : recurse (nextGeneration stacks) where
    nextGeneration ss = nub (concatMap next ss)

allSymmetricStacks :: [Stacks]
allSymmetricStacks = [[[1]]] : [[[1, 2]]] : recurse 0 where
  recurse n = nextGeneration : recurse (n + 1) where
    nextGeneration = filter isSymmetric $ nub (gen1 ++ gen2) where
      gen1 = allStacksFrom (allSymmetricStacks !! n) !! 2
      gen2 = allStacksFrom (allSymmetricStacks !! (n + 1)) !! 1

allStacks :: [Stacks]
allStacks = recurse [[[1]]] where
  recurse stacks = stacks : recurse (nextGeneration stacks) where
    nextGeneration ss = nub (concatMap next ss)

next :: Stack -> Stacks
next stack = extendOut stack ++ extendUp stack

extendUp :: Stack -> Stacks
extendUp stack@(topRow:_) = map (\i -> [i] : stack) (nextRows topRow)

extendOut :: Stack -> Stacks
extendOut [baseRow] = [[baseRow ++ [maximum baseRow + 1]]]
extendOut stack@(topRow:secondRow:remaining) = map appendToFirstRow newBlockPositions where
  newBlockPositions = filter (`notElem` topRow) $ nextRows secondRow
  appendToFirstRow p = newTopRow : secondRow : remaining where
    newTopRow = sort (p : topRow)

nextRows :: Row -> [Int]
nextRows row = nub (row ++ map (+1) row)

-----------------------------------------------------

isSymmetric :: Stack -> Bool
isSymmetric [baseRow] = True
isSymmetric (topRow:foundation) = recurse topRow foundation where
  recurse _ [] = True
  recurse topRow (nextRow:nextFoundation) = centered && soOn where
    centered = nextRow `isCenteredBeneath` topRow
    soOn = recurse nextRow nextFoundation

isCenteredBeneath :: Row -> Row -> Bool
isCenteredBeneath topRow bottomRow = case (center topRow, center bottomRow) of
  ([topCenter], [bottomCenter]) -> topCenter + 1 == bottomCenter
  _                             -> False

center :: Row -> [Int]
center row = nub $ zipWith (+) row (reverse row)

a320314_list :: [Int]
a320314_list = map length allSymmetricStacks

a320314 :: Int -> Int
a320314 n = a320314_list !! (n - 1)
