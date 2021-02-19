module Permutations.A327845Spec (main, spec) where
import Test.Hspec
import Permutations.A327845 (a327845)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A327845" $
  it "correctly computes the first five elements" $
    map a327845 [1..5] `shouldBe` expectedValue where
      expectedValue = [1,2,4,12,40]
