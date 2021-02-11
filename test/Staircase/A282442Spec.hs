module Staircase.A282442Spec (main, spec) where
import Test.Hspec
import Staircase.A282442 (a282442)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282442" $
  it "correctly computes the first 20 elements" $
    take 20 (map a282442 [1..]) `shouldBe` expectedValue where
      expectedValue = [2,3,3,4,6,5,5,9,9,8,10,11,11,15,15,11,12,18,19,16]
