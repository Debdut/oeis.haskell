module Delahaye.A337661Spec (main, spec) where
import Test.Hspec
import Delahaye.A337661 (a337661)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A337661" $
  it "correctly computes the first 20 elements" $
    take 20 (map a337661 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,4,5,10,25,7,14,35,49,15,30,75,105,225,22,44,110,154,330]
