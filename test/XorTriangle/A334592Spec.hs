module XorTriangle.A334592Spec (main, spec) where
import Test.Hspec
import XorTriangle.A334592 (a334592)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A334592" $
  it "correctly computes the first 20 elements" $
    map a334592 [1..20] `shouldBe` expectedValue where
      expectedValue = [0,1,1,3,2,2,3,6,4,5,3,5,3,4,6,10,7,6,7,7]
