module External.A128223 (a128223) where
import HelperSequences.A000217 (a000217)
import HelperSequences.A047838 (a047838)

a128223 :: Int -> Integer
a128223 n = if even n then a000217 $ toInteger n else a047838 (n + 1)
