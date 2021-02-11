module Staircase.A282574Spec (main, spec) where
import Test.Hspec
import Staircase.A282574 (a282574)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282574" $
  it "correctly computes the first 20 elements" $
    take 20 (map a282574 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,0,1,3,5,2,3,0,1,7,9,2,3,0,1,6,11,17,1,15]
