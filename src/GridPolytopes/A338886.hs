module GridPolytopes.A338886 (a338886) where
import GridPolytopes.A338885 (a338885_row)
import Data.List (genericLength)

a338886 :: Integer -> Integer
a338886 = genericLength . a338885_row
