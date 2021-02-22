module HelperSequences.A116416Spec (main, spec) where
import Test.Hspec
import HelperSequences.A116416 (a116416)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A116416" $
  it "correctly computes the first 20 elements" $
    take 20 (map a116416 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,1,3,1,4,5,11,1,5,3,7,7,19,13,25,1,6,7,17]
