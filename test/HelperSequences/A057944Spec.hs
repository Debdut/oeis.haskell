module HelperSequences.A057944Spec (main, spec) where
import Test.Hspec
import HelperSequences.A057944 (a057944)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A057944" $
  it "correctly computes the first 20 elements" $
    take 20 (map a057944 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,1,3,3,3,6,6,6,6,10,10,10,10,10,15,15,15,15,15]
