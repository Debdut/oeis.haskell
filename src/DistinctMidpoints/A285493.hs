module DistinctMidpoints.A285493 (a285493_list, a285493) where
import Helpers.Midpoints (nonDuplicateMidpointSequence, ArithmeticProgression(..), Injectivity(..))
-- For all distinct integers n, m, j, k such that (n, m) != (j, k) != (m, n),
-- (n + m, a(n) + a(m)) != (j + k, a(j) + a(k))

a285493 n = a285493_list !! (n - 1)

a285493_list = nonDuplicateMidpointSequence Arithmetic Injective
