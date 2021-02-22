module HelperSequences.A032741Spec (main, spec) where
import Test.Hspec
import HelperSequences.A032741 (a032741)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A032741" $
  it "correctly computes the first 20 elements" $
    take 20 (map a032741 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,0,1,1,2,1,3,1,3,2,3,1,5,1,3,3,4,1,5,1]
