module Helpers.Stairs (finalStaircaseState) where

finalStaircaseState n = recurse 1 0 0 where
  recurse size position stepCount
    | delta == 0 = (size, position, stepCount)
    | otherwise  = stepAgain where
      delta
        | even size = -position `div` size
        | otherwise = (n - position) `div` size
      stepAgain = recurse (size + 1) (position + delta * size) (stepCount + abs delta)
