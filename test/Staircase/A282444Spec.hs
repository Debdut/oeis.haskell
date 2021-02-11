module Staircase.A282444Spec (main, spec) where
import Test.Hspec
import Staircase.A282444 (a282444)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282444" $
  it "correctly computes the first 6 elements" $
    take 6 (map a282444 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,5,8,14,50]
