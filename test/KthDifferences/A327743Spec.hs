module KthDifferences.A327743Spec (main, spec) where
import Test.Hspec
import KthDifferences.A327743 (a327743)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A327743" $
  it "correctly computes the first 20 elements" $
    map a327743 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,2,4,3,6,11,5,9,7,13,10,18,8,15,27,14,23,12,22,17]
