module HelperSequences.A061017Spec (main, spec) where
import Test.Hspec
import HelperSequences.A061017 (a061017)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A061017" $
  it "correctly computes the first 20 elements" $
    take 20 (map a061017 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,2,3,3,4,4,4,5,5,6,6,6,6,7,7,8,8,8,8]
