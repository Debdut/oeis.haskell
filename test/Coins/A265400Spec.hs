module Coins.A265400Spec (main, spec) where
import Test.Hspec
import Coins.A265400 (a265400)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A265400" $
  it "correctly computes the first 20 elements" $
    take 20 (map a265400 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,0,0,1,0,1,0,1,2,0,2,3,0,3,4,5,0,5,6,7]
