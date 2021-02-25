module CostasLikeArrays.A321532Spec (main, spec) where
import Test.Hspec
import CostasLikeArrays.A321532 (a321532)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A321532" $
  it "correctly computes the first 6 elements" $
    map a321532 [1..6] `shouldBe` expectedValue where
      expectedValue = [1, 2, 4, 8, 16, 168]
