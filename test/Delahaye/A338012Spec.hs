module Delahaye.A338012Spec (main, spec) where
import Test.Hspec
import Delahaye.A338012 (a338012)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A338012" $
  it "correctly computes the first 20 elements" $
    take 20 (map a338012 [1..]) `shouldBe` expectedValue where
      expectedValue = [0, 3, 4, 10, 18, 23, 34, 55, 67, 93, 95, 120, 149, 166, 228, 271, 351, 398, 439, 505]
