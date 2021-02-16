module Subsets.A272081Spec (main, spec) where
import Test.Hspec
import Subsets.A272081 (a272081)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A272081" $
  it "correctly computes the first 20 elements" $
    take 20 (map a272081 [0..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,4,5,6,6,3,6,3,2,7,8,9,10,11,12,12,4,12]
