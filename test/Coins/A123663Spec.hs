module Coins.A123663Spec (main, spec) where
import Test.Hspec
import Coins.A123663 (a123663)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A123663" $
  it "correctly computes the first 20 elements" $
    take 20 (map a123663 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,1,2,4,5,7,8,10,12,13,15,17,18,20,22,24,25,27,29,31]
