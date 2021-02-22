module HelperSequences.A035516Spec (main, spec) where
import Test.Hspec
import HelperSequences.A035516 (a035516)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A035516" $
  it "correctly computes the first 20 elements" $
    take 20 (map a035516 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,2,3,3,1,5,5,1,5,2,8,8,1,8,2,8,3,8,3]
