module Staircase.A282573 (a282573) where
import Helpers.Stairs (finalStaircaseState)

a282573 n = stepCount where
    (_, _, stepCount) = finalStaircaseState n
