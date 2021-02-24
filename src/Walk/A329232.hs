module Walk.A329232 (a329232) where
import Helpers.Grasshopper (grasshopper, Direction (..))

a329232 = grasshopper 0 f where
  f Clockwise        _ = id
  f Counterclockwise _ = (+1)
