module HelperSequences.A000040Spec (main, spec) where
import Test.Hspec
import HelperSequences.A000040 (a000040)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A000040" $
  it "correctly computes the first 20 elements" $
    take 20 (map a000040 [1..]) `shouldBe` expectedValue where
      expectedValue = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71]
