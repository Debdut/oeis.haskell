module Staircase.A282574 (a282574) where
import Helpers.Stairs (finalStaircaseState)

a282574 n = position where
  (_, position, _) = finalStaircaseState n
