module HelperSequences.A001511Spec (main, spec) where
import Test.Hspec
import HelperSequences.A001511 (a001511)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A001511" $
  it "correctly computes the first 20 elements" $
    take 20 (map a001511 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,1,3,1,2,1,4,1,2,1,3,1,2,1,5,1,2,1,3]
