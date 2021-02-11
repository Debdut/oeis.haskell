module Miscellaneous.A338169Spec (main, spec) where
import Test.Hspec
import Miscellaneous.A338169 (a338169)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A338169" $
  it "correctly computes the first 20 elements" $
    map a338169 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,1,2,2,2,1,1,2,3,1,3,1,3,2,2,1,3,2,3,2]
