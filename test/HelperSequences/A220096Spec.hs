module HelperSequences.A220096Spec (main, spec) where
import Test.Hspec
import HelperSequences.A220096 (a220096)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A220096" $
  it "correctly computes the first 20 elements" $
    take 20 (map a220096 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,1,2,2,4,3,6,4,3,5,10,6,12,7,5,8,16,9,18,10]
