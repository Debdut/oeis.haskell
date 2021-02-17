module Braxton.A282170 (a282170) where
import Helpers.BraxtonHelper (allSequences, SymmetricRelation(..), ReflexiveRelation(..))

a282170 :: Int -> Integer
a282170 n = minimum $ map product theSequences where
  theSequences = map (map fromIntegral) $ allSequences Reflexive Symmetric n n
