module Graham.A277278 (a277278) where
import Helpers.Subsets (a048793_tabf)
import Math.NumberTheory.Powers.Squares (isSquare')
import Data.List (find)
import Data.Maybe (fromJust)

a277278 :: Integer -> Integer
a277278 n = last $ fromJust $ find (isSquare' . sum) candidateSequences where
      candidateSequences = map ((n:) . map (n+)) a048793_tabf
