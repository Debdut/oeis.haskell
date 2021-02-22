module Poset.A332809Spec (main, spec) where
import Test.Hspec
import Poset.A332809 (a332809)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A332809" $
  it "correctly computes the first 20 elements" $
    map a332809 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,2,3,3,4,5,6,4,6,6,7,7,8,9,10,5,6,9,10,8]
