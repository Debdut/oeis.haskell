module HelperSequences.A143482Spec (main, spec) where
import Test.Hspec
import HelperSequences.A143482 (a143482)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A143482" $
  it "correctly computes the first 20 elements" $
    take 20 (map a143482 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,4,5,12,7,16,27,50,33,72,39,56,45,64,51,108,57,100]
