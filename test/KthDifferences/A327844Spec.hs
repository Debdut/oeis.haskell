module KthDifferences.A327844Spec (main, spec) where
import Test.Hspec
import KthDifferences.A327844 (a327844)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A327844" $
  it "correctly computes the first 20 elements" $
    map a327844 [1..20] `shouldBe` expectedValue where
      expectedValue = [1, 1, 2, 1, 2, 4, 1, 2, 4, 3, 1, 2, 4, 3, 6, 1, 2, 4, 3, 6]
