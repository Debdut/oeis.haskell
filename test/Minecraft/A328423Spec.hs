module Minecraft.A328423Spec (main, spec) where
import Test.Hspec
import Minecraft.A328423 (a328423)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A328423" $
  it "correctly computes the first 20 elements" $
    take 20 (map a328423 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,4,6,9,14,18,24,31,42,51,65,79,97,118,142,167,198,229,271]
