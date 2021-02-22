module Helpers.Grasshopper (grasshopper, Direction (..)) where
import Data.Vector ((!), (//))
import qualified Data.Vector as Vec
import Control.Monad (mplus)

data Direction = Clockwise | Counterclockwise deriving (Eq)

-- There are two types of data we want:
-- 1) Data about the *process* (e.g. how many Counterclockwise steps?)
-- 2) Data about the *result* (e.g. what position is visited the most?)
-- This function is best at computing *process* data.
grasshopper :: a -> (Direction -> Vec.Vector Int -> a -> a) -> Int -> a
grasshopper a f n = recurse a 1 0 $ Vec.replicate n 0 where
  recurse a' stepCount pos hops
    | Vec.all (> 0) hops = a'
    | otherwise          = recurse a'' (stepCount + 1) pos' hops' where
    pos1 = (pos + stepCount) `mod` n
    pos2 = (pos - stepCount) `mod` n
    hops' = hops // [(pos, (hops ! pos) + 1)]
    direction  = if hops ! pos1 <= hops ! pos2 then Clockwise else Counterclockwise
    pos'       = if direction == Clockwise then pos1 else pos2
    a''        = f direction hops' a'
