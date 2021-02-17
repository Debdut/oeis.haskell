module Braxton.A282169Spec (main, spec) where
import Test.Hspec
import Braxton.A282169 (a282169)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282169" $
  it "correctly computes the first 5 elements" $
    take 5 (map a282169 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,2,6,6]
