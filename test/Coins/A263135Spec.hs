module Coins.A263135Spec (main, spec) where
import Test.Hspec
import Coins.A263135 (a263135)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A263135" $
  it "correctly computes the first 20 elements" $
      map a263135 [0..20] `shouldBe` expectedValue where
        expectedValue = [0,0,1,2,3,4,6,7,8,9,11,12,13,15,16,17,19,20,21,23,24]
