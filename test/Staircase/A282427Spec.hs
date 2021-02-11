module Staircase.A282427Spec (main, spec) where
import Test.Hspec
import Staircase.A282427 (a282427)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282427" $
  it "correctly computes the first 5 elements" $
    take 5 (map a282427 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,3,7,39,47]
