module XorTriangle.A334596Spec (main, spec) where
import Test.Hspec
import XorTriangle.A334596 (a334596)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A334596" $
  it "correctly computes the first 10 elements" $
    map a334596 [1..10] `shouldBe` expectedValue where
      expectedValue = [2,0,0,2,0,2,4,2,0,8]
