module Miscellaneous.A306216Spec (main, spec) where
import Test.Hspec
import Miscellaneous.A306216 (a306216)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A306216" $
  it "correctly computes the first 20 elements" $
    map a306216 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,1,0,0,-1,0,-1,0,-1,0,-1,0,-1,1,-1,1,-1,0,-1,0]
