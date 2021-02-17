module Braxton.A282168 (a282168) where
import Helpers.BraxtonHelper (allSequences, SymmetricRelation(..), ReflexiveRelation(..))

a282168 :: Int -> Integer
a282168 n = minimum $ map sum theSequences where
  theSequences = map (map fromIntegral) $ allSequences Reflexive NonSymmetric n n
