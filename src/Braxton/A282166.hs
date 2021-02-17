module Braxton.A282166 (a282166) where
import Helpers.BraxtonHelper (allSequences, SymmetricRelation(..), ReflexiveRelation(..))

a282166 :: Int -> Integer
a282166 n = minimum $ map sum theSequences where
  theSequences = map (map fromIntegral) $ allSequences NonReflexive Symmetric n n
