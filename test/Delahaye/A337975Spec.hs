module Delahaye.A337975Spec (main, spec) where
import Test.Hspec
import Delahaye.A337975 (a337975)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A337975" $
  it "correctly computes the first 20 elements" $
    take 20 (map a337975 [1..]) `shouldBe` expectedValue where
      expectedValue = [1, 3, 3, 7, 9, 7, 12, 21, 21, 12, 22, 36, 49, 36, 22, 30, 66, 84, 84, 66]
