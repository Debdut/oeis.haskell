module Delahaye.A338033Spec (main, spec) where
import Test.Hspec
import Delahaye.A338033 (a338033)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A338033" $
  it "correctly computes the first 20 elements" $
    take 20 (map a338033 [1..]) `shouldBe` expectedValue where
      expectedValue = [0, 0, 1, 0, 3, 9, 0, 7, 21, 49, 0, 12, 36, 84, 144, 0, 20, 60, 140, 240]
