module SubprimeFib.A282813 (a282813) where
import Helpers.Table (tableByAntidiagonals)
import Helpers.SubprimeFib (loopPosition)

a282813 n = loopPosition (n' + 1) (k' + 1) where
  (n', k') = tableByAntidiagonals (n - 1)
