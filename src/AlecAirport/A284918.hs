module AlecAirport.A284918 (a284918) where
import Data.List (find, nub)
import Helpers.GridLabeling (pairs, onALine, onLine, everyPair)
a284918 n = map snd a284918_list !! (n - 1)

-- Lexicographically earliest sequence of positive integers such that no three distinct points (i, a(i)), (j, a(j)), (k, a(k)) form an isosceles triangle (including degenerate isosceles triangles).
a284918_list = (0,1) : recurse 1 where
  recurse i = (i, nextTerm) : recurse (i + 1) where
    nextTerm = head $ filter noIsosceles [1..] where
      noIsosceles a_k = all (not . isoceles) $ everyPair $ take i a284918_list where
        pk = (i, a_k)
        isoceles (p0, p1)
          | euclideanDistance p0 p1 == euclideanDistance p0 pk = True
          | euclideanDistance p0 p1 == euclideanDistance p1 pk = True
          | euclideanDistance p0 pk == euclideanDistance p1 pk = True
          | otherwise = False

euclideanDistance (x_0, y_0) (x_1, y_1) = (x_0 - x_1)^2 + (y_0 - y_1)^2
