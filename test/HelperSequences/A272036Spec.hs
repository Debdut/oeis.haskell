module HelperSequences.A272036Spec (main, spec) where
import Test.Hspec
import HelperSequences.A272036 (a272036)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A272036" $
  it "correctly computes the first 3 elements" $
    take 3 (map a272036 [0..]) `shouldBe` expectedValue where
      expectedValue = [1,38,2090]
