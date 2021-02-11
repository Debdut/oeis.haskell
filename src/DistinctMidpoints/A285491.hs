module DistinctMidpoints.A285491 (a285491_list, a285491) where
import Helpers.Midpoints (nonDuplicateMidpointSequence, ArithmeticProgression(..), Injectivity(..))
-- For all distinct integers n, m, j, k such that (n, m) != (j, k) != (m, n),
-- (n + m, a(n) + a(m)) != (j + k, a(j) + a(k))

a285491 n = a285491_list !! (n - 1)

a285491_list = nonDuplicateMidpointSequence Arithmetic Noninjective
