module Braxton.A282167 (a282167) where
import Helpers.BraxtonHelper (allSequences, SymmetricRelation(..), ReflexiveRelation(..))

a282167 :: Int -> Integer
a282167 n = minimum $ map sum theSequences where
  theSequences = map (map fromIntegral) $ allSequences Reflexive Symmetric n n
