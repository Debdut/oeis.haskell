module HelperSequences.A000005Spec (main, spec) where
import Test.Hspec
import HelperSequences.A000005 (a000005)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A000005" $
  it "correctly computes the first 20 elements" $
    take 20 (map a000005 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,2,3,2,4,2,4,3,4,2,6,2,4,4,5,2,6,2,6]
