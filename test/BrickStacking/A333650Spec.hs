module BrickStacking.A333650Spec (main, spec) where
import Test.Hspec
import BrickStacking.A333650 (a333650)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A333650" $
  it "correctly computes the six rows elements" $
    map a333650 [1..21] `shouldBe` expectedValue where
      expectedValue = [1,1,2,1,4,4,1,7,11,8,1,12,24,28,16,1,20,52,70,68,32]
