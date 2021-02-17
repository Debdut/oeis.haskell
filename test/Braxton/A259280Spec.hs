module Braxton.A259280Spec (main, spec) where
import Test.Hspec
import Braxton.A259280 (a259280)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A259280" $
  it "correctly computes the first 16 elements" $
    take 16 (map a259280 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,4,5,7,9,11,14,16,19,21,24,27,30,33,36]
