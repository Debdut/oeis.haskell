module Coins.A260643 (a260643, a260643_list) where
import Data.List (delete)
import Coins.A265400 (a265400)

a260643 :: Int -> Int
a260643 n = a260643_list !! (n - 1)

startingMatrix :: [[Int]]
startingMatrix = map (\i -> delete i [1..]) [1..]

firstTermInBothLists :: [Int] -> [Int] -> Int
firstTermInBothLists l1@(a:as) l2@(b:bs)
  | a == b = a
  | a  < b = firstTermInBothLists as l2
  | a  > b = firstTermInBothLists l1 bs
firstTermInBothLists _ _ = error "Lists have no term in common!"

a260643_list :: [Int]
a260643_list = 1 : a 2 startingMatrix where
  a i matrix = a_i : a (i + 1) matrix' where
    a_i = nextTerm i matrix
    matrix'
      | a265400 i == 0 = crossOutAll [(a_i, prev i)]                matrix
      | otherwise      = crossOutAll [(a_i, prev i), (a_i, adja i)] matrix

fromRow :: Int -> [[Int]] -> [Int]
fromRow i matrix = matrix !! (i - 1)

nextTerm :: Int -> [[Int]] -> Int
nextTerm i matrix
  | a265400 i == 0 = head l2
  | otherwise   = firstTermInBothLists l1 l2 where
    l1 = fromRow (adja i) matrix
    l2 = fromRow (prev i) matrix

adja :: Int -> Int
adja = a260643 . a265400      -- Not defined for certain (literal) corner cases

prev :: Int -> Int
prev = a260643 . subtract 1 -- Defined for all n > 1

crossOutAll :: [(Int, Int)] -> [[Int]] -> [[Int]]
crossOutAll pairs matrix = foldr crossOut2 matrix pairs

crossOut2 :: (Int, Int) -> [[Int]] -> [[Int]]
crossOut2 (i, j) matrix = crossOut (i, j) $ crossOut (j, i) matrix

crossOut :: (Int, Int) -> [[Int]] -> [[Int]]
crossOut (i, j) matrix = take (i - 1) matrix ++ [m_j] ++ drop i matrix where
  m_j = delete j $ matrix !! (i - 1)
