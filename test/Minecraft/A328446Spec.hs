module Minecraft.A328446Spec (main, spec) where
import Test.Hspec
import Minecraft.A328446 (a328446)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A328446" $
  it "correctly computes the first 20 elements" $
    take 20 (map a328446 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,1,2,2,3,4,2,3,5,6,4,7,8,2,5,9,10,3,6,11]
