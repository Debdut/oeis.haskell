module CostasLikeArrays.A319476Spec (main, spec) where
import Test.Hspec
import CostasLikeArrays.A319476 (a319476)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A319476" $
  it "correctly computes the first 6 elements" $
    map a319476 [1..6] `shouldBe` expectedValue where
      expectedValue = [0,1,2,2,3,5]
