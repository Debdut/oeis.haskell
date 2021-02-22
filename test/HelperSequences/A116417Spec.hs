module HelperSequences.A116417Spec (main, spec) where
import Test.Hspec
import HelperSequences.A116417 (a116417)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A116417" $
  it "correctly computes the first 20 elements" $
    take 20 (map a116417 [0..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,2,3,3,6,6,4,4,4,4,12,12,12,12,5,5,10,10]
