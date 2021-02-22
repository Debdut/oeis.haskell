module Poset.A334238Spec (main, spec) where
import Test.Hspec
import Poset.A334238 (a334238)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A334238" $
  it "correctly computes the first 20 elements" $
    map a334238 [1..20] `shouldBe` expectedValue where
      expectedValue = [57,63,171,258,266,294,301,329,342,343,354,361,377,378,379,381,387,399,423,437]
