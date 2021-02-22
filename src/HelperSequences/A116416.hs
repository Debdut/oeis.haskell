module HelperSequences.A116416 (a116416) where
import Helpers.ListHelpers (reciprocalSum)
import Helpers.Subsets (oneIndexed)
import Data.Ratio (numerator)

a116416 :: Integer -> Integer
a116416 = numerator . reciprocalSum . oneIndexed
