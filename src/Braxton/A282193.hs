module Braxton.A282193 (a282193) where
import Helpers.BraxtonHelper (allSequences, SymmetricRelation(..), ReflexiveRelation(..))

a282193 :: Int -> Integer
a282193 n = minimum $ map product theSequences where
  theSequences = map (map fromIntegral) $ allSequences Reflexive NonSymmetric n n
