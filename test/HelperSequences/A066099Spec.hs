module HelperSequences.A066099Spec (main, spec) where
import Test.Hspec
import HelperSequences.A066099 (a066099)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A066099" $
  it "correctly computes the first 20 elements" $
    take 20 (map a066099 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,2,1,1,3,2,1,1,2,1,1,1,4,3,1,2,2,2,1]
