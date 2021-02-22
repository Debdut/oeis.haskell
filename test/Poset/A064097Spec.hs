module Poset.A064097Spec (main, spec) where
import Test.Hspec
import Poset.A064097 (a064097)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A064097" $
  it "correctly computes the first 20 elements" $
    map a064097 [1..20] `shouldBe` expectedValue where
      expectedValue = [0,1,2,2,3,3,4,3,4,4,5,4,5,5,5,4,5,5,6,5]
