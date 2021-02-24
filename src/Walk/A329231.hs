module Walk.A329231 (a329231) where
import Helpers.Grasshopper (grasshopper, Direction (..))

-- This is lousy because it (re-)calculates the maximum each step.
a329231 = grasshopper 0 f where
  f Clockwise steps _ = maximum steps
  f _         _     x = x
