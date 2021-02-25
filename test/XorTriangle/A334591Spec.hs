module XorTriangle.A334591Spec (main, spec) where
import Test.Hspec
import XorTriangle.A334591 (a334591)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A334591" $
  it "correctly computes the first 20 elements" $
    map a334591 [1..20] `shouldBe` expectedValue where
      expectedValue = [0,1,1,2,1,1,2,3,2,2,1,2,1,2,3,4,3,2,2,2]
