module BrickStacking.A320314Spec (main, spec) where
import Test.Hspec
import BrickStacking.A320314 (a320314)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A320314" $
  it "correctly computes the first 6 elements" $
    map a320314 [1..6] `shouldBe` expectedValue where
      expectedValue = [1, 1, 3, 3, 7, 9]
