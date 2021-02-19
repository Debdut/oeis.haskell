module Permutations.A329851Spec (main, spec) where
import Test.Hspec
import Permutations.A329851 (a329851)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A329851" $
  it "correctly computes the first six elements" $
    map a329851 [0..5] `shouldBe` expectedValue where
      expectedValue = [0, 2, 12, 120, 1320, 17856]
