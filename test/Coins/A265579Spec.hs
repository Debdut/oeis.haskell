module Coins.A265579Spec (main, spec) where
import Test.Hspec
import Coins.A265579 (a265579)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A265579" $
  it "correctly computes the first 20 elements" $
    take 20 (map a265579 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,1,2,3,1,4,2,5,6,0,7,6,3,7,4,5,3,8,6,9]
