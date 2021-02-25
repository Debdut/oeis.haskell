module CostasLikeArrays.A321531Spec (main, spec) where
import Test.Hspec
import CostasLikeArrays.A321531 (a321531)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A321531" $
  it "correctly computes the first 6 elements" $
    map a321531 [1..6] `shouldBe` expectedValue where
      expectedValue = [0, 1, 2, 4, 6, 8]
