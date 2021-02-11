module Miscellaneous.A306698Spec (main, spec) where
import Test.Hspec
import Miscellaneous.A306698 (a306698)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A306698" $
  it "correctly computes the first 20 elements" $
    map a306698 [0..20] `shouldBe` expectedValue where
      expectedValue = [0,1,3,6,10,15,21,7,15,24,4,15,27,40,12,27,43,9,27,46,66]
