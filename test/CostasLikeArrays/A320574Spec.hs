module CostasLikeArrays.A320574Spec (main, spec) where
import Test.Hspec
import CostasLikeArrays.A320574 (a320574)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A320574" $
  it "correctly computes the first 6 elements" $
    map a320574 [1..6] `shouldBe` expectedValue where
      expectedValue = [1, 1, 2, 1, 1, 3]
