module Walk.A329230 (a329230) where
import Helpers.Grasshopper (grasshopper, Direction (..))

-- a329230 = fst . snd . grasshopper

a329230 = grasshopper 0 f where
  f _ _ x = x + 1
