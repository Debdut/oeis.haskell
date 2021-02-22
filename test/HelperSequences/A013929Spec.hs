module HelperSequences.A013929Spec (main, spec) where
import Test.Hspec
import HelperSequences.A013929 (a013929)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A013929" $
  it "correctly computes the first 20 elements" $
    take 20 (map a013929 [1..]) `shouldBe` expectedValue where
      expectedValue = [4,8,9,12,16,18,20,24,25,27,28,32,36,40,44,45,48,49,50,52]
