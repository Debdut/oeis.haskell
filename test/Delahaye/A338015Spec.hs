module Delahaye.A338015Spec (main, spec) where
import Test.Hspec
import Delahaye.A338015 (a338015)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A338015" $
  it "correctly computes the first 20 elements" $
    take 20 (map a338015 [1..]) `shouldBe` expectedValue where
      expectedValue = [0, 3, 3, 4, 6, 4, 10, 7, 7, 10, 18, 13, 8, 13, 18, 23, 21, 14, 14, 21]
