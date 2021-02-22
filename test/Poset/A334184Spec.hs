module Poset.A334184Spec (main, spec) where
import Test.Hspec
import Poset.A334184 (a334184)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A334184" $
  it "correctly computes the first 20 elements" $
    map a334184 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,1,1,1,1,1,1,1,1,1,1,1,1,1,2,1,1,1,1,2]
