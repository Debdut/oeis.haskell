module XorTriangle.A334593Spec (main, spec) where
import Test.Hspec
import XorTriangle.A334593 (a334593)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A334593" $
  it "correctly computes the first 20 elements" $
    map a334593 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,2,2,3,4,4,3,4,6,5,7,5,7,6,4,5,8,9,8,8]
