module Staircase.A282442 (a282442) where
import Helpers.Stairs (finalStaircaseState)

a282442 n = finalStepSize where
  (finalStepSize, _, _) = finalStaircaseState n
