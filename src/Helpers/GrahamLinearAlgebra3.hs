module Helpers.GrahamLinearAlgebra3 (rrefMatrix) where
import Helpers.F3Vectors (rref)
import Data.Vector (Vector)
import qualified Data.Vector as Vec
import HelperSequences.A000040 (a000040_list)
import HelperSequences.A000720 (a000720)

rrefMatrix :: Int -> Vector (Vector Int)
rrefMatrix = rref . iMatrix

tupleBuilder :: Int          -- e.g. 5
             -> Int          -- e.g. 7
             -> Int          -- e.g. 3
             -> Int          -- e.g. 1
             -> [(Int, Int)] -- e.g. [(1,1), (4,1), (7,1)] (5 + 1, 5 + 4, and 5 + 7 are all divisible by 3.)
tupleBuilder n terms modulus x = zip indexes [x,x..] where
  offset = modulus + n `mod` (-modulus)
  numberOfIndices = (terms + offset) `div` modulus
  indexes = map (\i -> modulus * i - offset) [1..numberOfIndices]

powersToTry :: Int -> Int -> Int -> [(Int, Int)]
powersToTry n terms modulus = concatMap build [1..maxTerm] where
  build i = tupleBuilder n terms (modulus^i) (i `mod` 3)
  maxTerm = floor $ logBase a b where
    (a, b) = (fromIntegral modulus, fromIntegral (n + terms))

buildRow :: Int -> Int -> Int -> Vector Int
buildRow n terms modulus = emptyVector Vec.// newValues where
  emptyVector = Vec.replicate (terms + 1) 0
  newValues = powersToTry n terms modulus

buildMatrix1 :: Int -> Int -> Vector (Vector Int)
buildMatrix1 n terms = Vec.fromList $ map (buildRow n terms) primeColumns where
  primeColumns :: [Int]
  primeColumns = map fromInteger $ take (fromInteger $ a000720 n') a000040_list where
    n' = fromIntegral (n + terms)

iMatrix :: Int -> Vector (Vector Int)
iMatrix n = Vec.map cycleVector scaledMatrix where
  scaledMatrix = buildMatrix1 n terms where
    terms = if n == 4 then 8 else 2 * n - 1
  cycleVector m = Vec.snoc (Vec.tail m) (Vec.head m)
