module CostasLikeArrays.A306272Spec (main, spec) where
import Test.Hspec
import CostasLikeArrays.A306272 (a306272)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A306272" $
  it "correctly computes the first 6 elements" $
    map a306272 [1..6] `shouldBe` expectedValue where
      expectedValue = [0,2,12,78,686,6056]
