module HelperSequences.A000188Spec (main, spec) where
import Test.Hspec
import HelperSequences.A000188 (a000188)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A000188" $
  it "correctly computes the first 20 elements" $
    take 20 (map a000188 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,1,2,1,1,1,2,3,1,1,2,1,1,1,4,1,3,1,2]
