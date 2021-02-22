module Tiling.A329185Spec (main, spec) where
import Test.Hspec
import Tiling.A329185 (a329185)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A329185" $
  it "correctly computes the first 11 elements" $
    map a329185 [0..10] `shouldBe` expectedValue where
      expectedValue = [1,1,2,5,10,22,49,105,227,494,1071]
