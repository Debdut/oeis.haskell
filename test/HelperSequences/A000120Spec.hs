module HelperSequences.A000120Spec (main, spec) where
import Test.Hspec
import HelperSequences.A000120 (a000120)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A000120" $
  it "correctly computes the first 20 elements" $
    take 20 (map a000120 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,1,2,1,2,2,3,1,2,2,3,2,3,3,4,1,2,2,3]
