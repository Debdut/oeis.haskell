module HelperSequences.A006530Spec (main, spec) where
import Test.Hspec
import HelperSequences.A006530 (a006530)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A006530" $
  it "correctly computes the first 20 elements" $
    take 20 (map a006530 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,2,5,3,7,2,3,5,11,3,13,7,5,2,17,3,19,5]
