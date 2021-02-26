module Delahaye.A337974Spec (main, spec) where
import Test.Hspec
import Delahaye.A337974 (a337974)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A337974" $
  it "correctly computes the first 20 elements" $
    take 20 (map a337974 [1..]) `shouldBe` expectedValue where
      expectedValue = [1, 3, 9, 7, 21, 49, 12, 36, 84, 144, 22, 66, 154, 264, 484, 30, 90, 210, 360, 660]
