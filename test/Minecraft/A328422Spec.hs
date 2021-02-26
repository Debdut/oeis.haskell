module Minecraft.A328422Spec (main, spec) where
import Test.Hspec
import Minecraft.A328422 (a328422)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A328422" $
  it "correctly computes the first 20 elements" $
    take 20 (map a328422 [2..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,2,4,4,6,6,9,9,14,14,18,18,24,24,31,31,42,42]
