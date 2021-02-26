module Delahaye.A338034Spec (main, spec) where
import Test.Hspec
import Delahaye.A338034 (a338034)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A338034" $
  it "correctly computes the first 20 elements" $
    take 20 (map a338034 [1..]) `shouldBe` expectedValue where
      expectedValue = [0, 0, 0, 0, 1, 0, 0, 3, 3, 0, 0, 7, 9, 7, 0, 0, 12, 21, 21, 12]
