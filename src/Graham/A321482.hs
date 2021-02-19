module Graham.A321482 (a321482) where
import PowerDivisibility.A072905 (a072905)
import Helpers.GrahamLinearAlgebra (matrixFromColumnLabels)
import Data.Matrix (Matrix)
import Helpers.BooleanMatrix (nullity)

a321482 :: Integer -> Int
a321482 = nullity . initialMatrix

initialMatrix :: Integer -> Matrix Bool
initialMatrix n = matrixFromColumnLabels [n + 1..a072905 n - 1]
