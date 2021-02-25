module KthDifferences.A328196Spec (main, spec) where
import Test.Hspec
import KthDifferences.A328196 (a328196)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A328196" $
  it "correctly computes the first 20 elements" $
    take 20 (map a328196 [1..]) `shouldBe` expectedValue where
      expectedValue = [2, 4, -2, 6, -3, 9, -7, 12, -9, 14, -12, 16, -13, 19, -17, 21, -18, 24, -22, 26]
