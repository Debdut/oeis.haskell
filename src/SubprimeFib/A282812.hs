module SubprimeFib.A282812 (a282812) where
import Helpers.Table (tableByAntidiagonals)
import Helpers.SubprimeFib (largestValue)

a282812 n = largestValue (n' + 1) (k' + 1) where
    (n', k') = tableByAntidiagonals (n - 1)
