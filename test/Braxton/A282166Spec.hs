module Braxton.A282166Spec (main, spec) where
import Test.Hspec
import Braxton.A282166 (a282166)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282166" $
  it "correctly computes the first 5 elements" $
    take 5 (map a282166 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,3,4,7,8]
