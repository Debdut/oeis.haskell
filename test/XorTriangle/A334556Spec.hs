module XorTriangle.A334556Spec (main, spec) where
import Test.Hspec
import XorTriangle.A334556 (a334556)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A334556" $
  it "correctly computes the first 20 elements" $
    map a334556 [1..20] `shouldBe` expectedValue where
      expectedValue = [0,1,11,13,39,57,83,91,101,109,151,233,543,599,659,731,805,877,937,993]
