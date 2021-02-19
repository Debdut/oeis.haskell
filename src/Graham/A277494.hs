module Graham.A277494 (a277494, a277494') where
import Helpers.GrahamLinearAlgebra3 (rrefMatrix)
import Data.Matrix (getCol, ncols, Matrix)
import Data.Vector (toList, map, (!), zipWith, zip, findIndex, filter, last)
import Data.Maybe (fromJust)

a277494 :: Int -> Int
a277494 n
  | array == [0] = n
  | otherwise    = Prelude.last array where
    array = 0 : Prelude.map fst (a277494' n)

a277494' :: Int -> [(Int, Int)]
a277494' n = (n', 1) : toList (Data.Vector.zip bases powers) where
  n' = fromIntegral n
  m = rrefMatrix n
  bases = Data.Vector.map (1+n'+) columnIndices
  relevantRows = Data.Vector.filter (\row -> Data.Vector.last row /= 0) m
  powers = Data.Vector.map ((3-) . Data.Vector.last) relevantRows
  columnIndices = Data.Vector.map (fromJust . findIndex (/=0)) relevantRows
