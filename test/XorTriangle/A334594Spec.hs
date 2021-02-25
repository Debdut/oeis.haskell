module XorTriangle.A334594Spec (main, spec) where
import Test.Hspec
import XorTriangle.A334594 (a334594)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A334594" $
  it "correctly computes the first 20 elements" $
    map a334594 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,2,1,3,0,4,2,1,5,3,0,6,1,1,7,0,0,8,4,2]
