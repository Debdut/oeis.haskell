module Helpers.Midpoints (nonDuplicateMidpointSequence, Injectivity(..), ArithmeticProgression(..)) where
import Data.Set (Set)
import qualified Data.Set as Set

data Injectivity = Injective | Noninjective deriving (Eq)
data ArithmeticProgression = Arithmetic | Nonarithmetic deriving (Eq)

nonDuplicateMidpointSequence :: ArithmeticProgression -> Injectivity -> [Int]
nonDuplicateMidpointSequence arithmetricity injectivity = map snd list where
  list = recurse 1 Set.empty where
    recurse i knownMidpoints = (i, a_i) : recurse (i + 1) newMidpoints where
      knownSequence = take (i - 1) list
      a_i = newMidpoint injectivity i knownMidpoints knownSequence
      newMidpoints
        | arithmetricity == Arithmetic = Set.insert (2 * i, 2 * a_i) recursiveMidpoints
        | otherwise                    = recursiveMidpoints where
          recursiveMidpoints = foldr (Set.insert . midpoint (i, a_i)) knownMidpoints knownSequence

-- Given a list of midpoints and a list of existing terms, find the least term
-- such that it doesn't share a midpoint with any two other points.
newMidpoint :: Integral a => Injectivity -> a -> Set (a, a) -> [(a, a)] -> a
newMidpoint injectivity x knownMidpoints existingTerms = head $ filter validPosition [1..] where
  validPosition y = injectivityCheck y && midpointCheck y where
    injectivityCheck y
      | injectivity == Injective = y `notElem` map snd existingTerms
      | otherwise                = True
    midpointCheck y = all notExistingMidpoint existingTerms where
      notExistingMidpoint point = midpoint (x, y) point `notElem` knownMidpoints

-- Each coordinate is doubled.
midpoint :: Integral a => (a, a) -> (a, a) -> (a, a)
midpoint (x_0, y_0) (x_1, y_1) = (x_0 + x_1, y_0 + y_1)
