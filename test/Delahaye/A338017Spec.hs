module Delahaye.A338017Spec (main, spec) where
import Test.Hspec
import Delahaye.A338017 (a338017)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A338017" $
  it "correctly computes the first 20 elements" $
    take 20 (map a338017 [1..]) `shouldBe` expectedValue where
      expectedValue = [0, 0, 0, 0, 9, 0, 0, 12, 12, 0, 0, 30, 16, 30, 0, 0, 54, 40, 40, 54]
