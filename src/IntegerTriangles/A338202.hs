module IntegerTriangles.A338202 (a338202, a338202_list) where
import Data.List (genericTake)
import Data.Ratio ((%), numerator, denominator, Ratio)
import qualified Data.MemoCombinators as Memo

a338202 :: Integer -> Int
a338202 = length . allTriangles

a338202_list :: [Int]
a338202_list = map a338202 [1..]

ratioMemo :: (Ratio Integer -> r) -> Ratio Integer -> r
ratioMemo = Memo.wrap f g $ Memo.pair Memo.integral Memo.integral where
  f (n,d) = n % d
  g r = (numerator r, denominator r)

secondSideList :: Integer -> Ratio Integer -> [Ratio Integer]
secondSideList n firstSide = concat $ genericTake (n - 2) $ secondSideRows firstSide

secondSideRows :: Ratio Integer -> [[Ratio Integer]]
secondSideRows = ratioMemo secondSideRows' where
  secondSideRows' firstSide = map validFractions [3..] where
    validFractions n = map (% n) $ filter ((==1) . gcd n) [lowerBound..upperBound] where
      lowerBound = ceiling ((n % 1) * (1 - firstSide)/2)
      upperBound = floor ((n % 1) * firstSide)

largestSideList :: Integer -> [Ratio Integer]
largestSideList n = concat $ genericTake (n - 3) largestSideRows

largestSideRows :: [[Ratio Integer]]
largestSideRows = map validFractions [4..] where
  validFractions n = map (% n) $ filter ((==1) . gcd n) [(n + 2) `div` 3..(n-1) `div` 2]

allTriangles :: Integer -> [(Ratio Integer, Ratio Integer, Ratio Integer)]
allTriangles 1 = []
allTriangles 2 = []
allTriangles n = (1 % 3, 1 % 3, 1 % 3) : concatMap boundedSecondSideList firstSide where
  firstSide = largestSideList n
  boundedSecondSideList side1 = map (\s2 -> (side1, s2, 1 - side1 - s2)) $ filter (\s2 -> denominator (1 - side1 - s2) <= n) $ secondSideList n side1
