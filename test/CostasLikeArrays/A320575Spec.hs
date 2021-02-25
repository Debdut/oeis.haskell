module CostasLikeArrays.A320575Spec (main, spec) where
import Test.Hspec
import CostasLikeArrays.A320575 (a320575)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A320575" $
  it "correctly computes the first 6 elements" $
    map a320575 [1..6] `shouldBe` expectedValue where
      expectedValue = [1,2,6,2,2,28]
