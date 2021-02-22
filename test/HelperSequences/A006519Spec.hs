module HelperSequences.A006519Spec (main, spec) where
import Test.Hspec
import HelperSequences.A006519 (a006519)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A006519" $
  it "correctly computes the first 20 elements" $
    take 20 (map a006519 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,1,4,1,2,1,8,1,2,1,4,1,2,1,16,1,2,1,4]
