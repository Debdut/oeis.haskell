module Braxton.A282167Spec (main, spec) where
import Test.Hspec
import Braxton.A282167 (a282167)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282167" $
  it "correctly computes the first 5 elements" $
    take 5 (map a282167 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,3,6,7,11]
