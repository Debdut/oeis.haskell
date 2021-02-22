module Poset.A334230Spec (main, spec) where
import Test.Hspec
import Poset.A334230 (a334230)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A334230" $
  it "correctly computes the first 20 elements" $
    map a334230 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,1,2,1,2,3,1,2,2,4,1,2,2,4,5,1,2,3,4,4]
