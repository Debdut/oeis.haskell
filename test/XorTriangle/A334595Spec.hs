module XorTriangle.A334595Spec (main, spec) where
import Test.Hspec
import XorTriangle.A334595 (a334595)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A334595" $
  it "correctly computes the first 20 elements" $
    map a334595 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,1,2,1,6,3,4,1,14,4,11,2,13,7,8,1,30,11,20,7]
