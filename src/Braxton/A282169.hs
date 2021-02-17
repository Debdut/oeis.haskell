module Braxton.A282169 (a282169) where
import Helpers.BraxtonHelper (allSequences, SymmetricRelation(..), ReflexiveRelation(..))

a282169 :: Int -> Integer
a282169 n = minimum $ map product theSequences where
  theSequences = map (map  fromIntegral) $ allSequences NonReflexive Symmetric n n
