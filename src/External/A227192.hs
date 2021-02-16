module External.A227192 (a227192) where
import Helpers.ListHelpers (runLengths)
import Helpers.BaseRepresentation (toBase)

a227192 :: Integer -> Int
a227192 = sum . scanl1 (+) . runLengths . toBase 2
