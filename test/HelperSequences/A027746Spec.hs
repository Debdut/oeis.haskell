module HelperSequences.A027746Spec (main, spec) where
import Test.Hspec
import HelperSequences.A027746 (a027746)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A027746" $
  it "correctly computes the first 20 elements" $
    take 20 (map a027746 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,2,2,5,2,3,7,2,2,2,3,3,2,5,11,2,2,3]
