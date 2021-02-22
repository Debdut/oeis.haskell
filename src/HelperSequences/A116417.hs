module HelperSequences.A116417 (a116417) where
import Helpers.ListHelpers (reciprocalSum)
import Helpers.Subsets (oneIndexed)
import Data.Ratio (denominator)

a116417 :: Integer -> Integer
a116417 = denominator . reciprocalSum . oneIndexed
