module HelperSequences.A117818Spec (main, spec) where
import Test.Hspec
import HelperSequences.A117818 (a117818)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A117818" $
  it "correctly computes the first 20 elements" $
    take 20 (map a117818 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,2,5,3,7,4,3,5,11,6,13,7,5,8,17,9,19,10]
