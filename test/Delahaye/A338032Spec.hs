module Delahaye.A338032Spec (main, spec) where
import Test.Hspec
import Delahaye.A338032 (a338032)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A338032" $
  it "correctly computes the first 20 elements" $
    take 20 (map a338032 [1..]) `shouldBe` expectedValue where
      expectedValue = [0, 1, 1, 3, 2, 3, 7, 4, 4, 7, 12, 8, 6, 8, 12, 20, 13, 10, 10, 13]
