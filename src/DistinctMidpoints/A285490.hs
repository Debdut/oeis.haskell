module DistinctMidpoints.A285490 (a285490_list, a285490) where
import Helpers.Midpoints (nonDuplicateMidpointSequence, ArithmeticProgression(..), Injectivity(..))
-- For all distinct integers n, m, j, k such that (n, m) != (j, k) != (m, n),
-- (n + m, a(n) + a(m)) != (j + k, a(j) + a(k))

a285490 n = a285490_list !! (n - 1)

a285490_list = nonDuplicateMidpointSequence Nonarithmetic Noninjective
