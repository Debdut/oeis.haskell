module HelperSequences.A026791Spec (main, spec) where
import Test.Hspec
import HelperSequences.A026791 (a026791)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A026791" $
  it "correctly computes the first 20 elements" $
    take 20 (map a026791 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,1,2,1,1,1,1,2,3,1,1,1,1,1,1,2,1,3,2]
