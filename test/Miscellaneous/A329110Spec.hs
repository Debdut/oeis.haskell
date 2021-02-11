module Miscellaneous.A329110Spec (main, spec) where
import Test.Hspec
import Miscellaneous.A329110 (a329110)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A329110" $
  it "correctly computes the first 20 elements" $
    map a329110 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,3,5,9,11,17,19,27,31,37,39,55,57,63,69,85,87,103,105,121]
