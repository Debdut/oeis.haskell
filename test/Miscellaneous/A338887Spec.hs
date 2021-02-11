module Miscellaneous.A338887Spec (main, spec) where
import Test.Hspec
import Miscellaneous.A338887 (a338887)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A338887" $
  it "correctly computes the first 20 elements" $
    map a338887 [1..20] `shouldBe` expectedValue where
      expectedValue = [0,1,1,2,3,3,5,6,7,9,12,10,14,15,16,19,23,19,27,24]
