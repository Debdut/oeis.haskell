module SubprimeFib.A282814 (a282814) where
import Helpers.Table (tableByAntidiagonals)
import Helpers.SubprimeFib (loopLength)

a282814 n = loopLength (n' + 1) (k' + 1) where
    (n', k') = tableByAntidiagonals (n - 1)
