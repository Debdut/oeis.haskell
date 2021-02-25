module KthDifferences.A328190Spec (main, spec) where
import Test.Hspec
import KthDifferences.A328190 (a328190)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A328190" $
  it "correctly computes the first 20 elements" $
    take 20 (map a328190 [1..]) `shouldBe` expectedValue where
      expectedValue = [1, 3, 7, 5, 11, 8, 17, 10, 22, 13, 27, 15, 31, 18, 37, 20, 41, 23, 47, 25]
