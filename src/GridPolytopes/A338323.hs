module GridPolytopes.A338323 (a338323) where
import GridPolytopes.A102698 (a102698)
import GridPolytopes.A334881 (a334881)
import GridPolytopes.A338322 (a338322)

a338323 :: Integer -> Integer
a338323 n = a102698 (n-1) + a334881 n + a338322 n
