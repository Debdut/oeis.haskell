module Staircase.A282434Spec (main, spec) where
import Test.Hspec
import Staircase.A282434 (a282434)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282434" $
  it "correctly computes the first 20 elements" $
    take 20 (map a282434 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,4,5,8,11,12,14,18,19,21,24,25,28,34,40,41,50,54,55]
