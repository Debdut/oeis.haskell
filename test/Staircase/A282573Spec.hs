module Staircase.A282573Spec (main, spec) where
import Test.Hspec
import Staircase.A282573 (a282573)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282573" $
  it "correctly computes the first 20 elements" $
    take 20 (map a282573 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,3,4,7,10,12,13,19,20,23,26,32,33,39,40,41,46,53,57,56]
