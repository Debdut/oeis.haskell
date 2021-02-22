module HelperSequences.A228351Spec (main, spec) where
import Test.Hspec
import HelperSequences.A228351 (a228351)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A228351" $
  it "correctly computes the first 20 elements" $
    take 20 (map a228351 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,1,1,3,1,2,2,1,1,1,1,4,1,3,2,2,1,1,2]
