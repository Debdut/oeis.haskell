module HelperSequences.A002808Spec (main, spec) where
import Test.Hspec
import HelperSequences.A002808 (a002808)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A002808" $
  it "correctly computes the first 20 elements" $
    take 20 (map a002808 [1..]) `shouldBe` expectedValue where
      expectedValue = [4,6,8,9,10,12,14,15,16,18,20,21,22,24,25,26,27,28,30,32]
