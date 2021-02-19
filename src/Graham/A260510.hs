module Graham.A260510 (a260510) where
import Graham.A006255 (a006255)
import Graham.A248663 (a248663)
import Helpers.GrahamLinearAlgebra (matrixFromColumnLabels)
import Data.Matrix (Matrix)
import Helpers.BooleanMatrix (nullity, rref)

a260510 :: Integer -> Int
a260510 = subtract 1 . nullity . initialMatrix

initialMatrix :: Integer -> Matrix Bool
initialMatrix n = matrixFromColumnLabels [n..a006255 n]
