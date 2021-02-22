module HelperSequences.A007913Spec (main, spec) where
import Test.Hspec
import HelperSequences.A007913 (a007913)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A007913" $
  it "correctly computes the first 20 elements" $
    take 20 (map a007913 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,1,5,6,7,2,1,10,11,3,13,14,15,1,17,2,19,5]
