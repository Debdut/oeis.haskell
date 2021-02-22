module Poset.A334144Spec (main, spec) where
import Test.Hspec
import Poset.A334144 (a334144)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A334144" $
  it "correctly computes the first 20 elements" $
    map a334144 [1..20] `shouldBe` expectedValue where
      expectedValue = [1, 1, 1, 1, 1, 2, 2, 1, 2, 2, 2, 2, 2, 2, 3, 1, 1, 2, 2, 2]
