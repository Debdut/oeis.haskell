module SqrtMultiples.A261865 (a261865) where
import Tables.A273620 (a273620T)
import Data.Maybe (fromJust)
import Data.List (find)

a261865 :: Integral a => a -> a
a261865 n = fromJust $ find (\k -> a273620T n k < n + 1) [1..]
