module CostasLikeArrays.A320573Spec (main, spec) where
import Test.Hspec
import CostasLikeArrays.A320573 (a320573)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A320573" $
  it "correctly computes the first 6 elements" $
    map a320573 [1..6] `shouldBe` expectedValue where
      expectedValue = [1,2,6,8,8,24]
