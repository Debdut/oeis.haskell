module HelperSequences.A272035Spec (main, spec) where
import Test.Hspec
import HelperSequences.A272035 (a272035)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A272035" $
  it "correctly computes the first 20 elements" $
    take 6 (map a272035 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,38,39,2090,2091]
