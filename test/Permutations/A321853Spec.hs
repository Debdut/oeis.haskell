module Permutations.A321853Spec (main, spec) where
import Test.Hspec
import Permutations.A321853 (a321853)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A321853" $
  it "correctly computes the first ten elements" $
    map a321853 [1..10] `shouldBe` expectedValue where
      expectedValue = [0, 1, 10, 86, 756, 7092, 71856, 787824, 9329760, 118956960]
