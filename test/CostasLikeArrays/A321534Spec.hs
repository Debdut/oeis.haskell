module CostasLikeArrays.A321534Spec (main, spec) where
import Test.Hspec
import CostasLikeArrays.A321534 (a321534)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A321534" $
  it "correctly computes the first 6 elements" $
    map a321534 [1..6] `shouldBe` expectedValue where
      expectedValue = [1, 1, 1, 1, 2, 21]
