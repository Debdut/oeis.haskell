module HelperSequences.A000037Spec (main, spec) where
import Test.Hspec
import HelperSequences.A000037 (a000037)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A000037" $
  it "correctly computes the first 20 elements" $
    take 20 (map a000037 [1..]) `shouldBe` expectedValue where
      expectedValue = [2,3,5,6,7,8,10,11,12,13,14,15,17,18,19,20,21,22,23,24]
