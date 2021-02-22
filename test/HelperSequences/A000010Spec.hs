module HelperSequences.A000010Spec (main, spec) where
import Test.Hspec
import HelperSequences.A000010 (a000010)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A000010" $
  it "correctly computes the first 20 elements" $
    take 20 (map a000010 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,2,4,2,6,4,6,4,10,4,12,6,8,8,16,6,18,8]
