module CostasLikeArrays.A320576Spec (main, spec) where
import Test.Hspec
import CostasLikeArrays.A320576 (a320576)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A320576" $
  it "correctly computes the first 6 elements" $
    map a320576 [1..6] `shouldBe` expectedValue where
      expectedValue = [1, 1, 2, 1, 1, 10]
