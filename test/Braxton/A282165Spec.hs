module Braxton.A282165Spec (main, spec) where
import Test.Hspec
import Braxton.A282165 (a282165)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A282165" $
  it "correctly computes the first 20 elements" $
    take 20 (map a282165 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,4,12,36,144,576,2304,11520,57600,345600,2073600,12441600,74649600,522547200,3657830400,29262643200,234101145600,1872809164800,14982473318400]
