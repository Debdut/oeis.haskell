module CostasLikeArrays.A320448Spec (main, spec) where
import Test.Hspec
import CostasLikeArrays.A320448 (a320448)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A320448" $
  it "correctly computes the first 6 elements" $
    map a320448 [1..6] `shouldBe` expectedValue where
      expectedValue = [0,1,2,4,8,11]
