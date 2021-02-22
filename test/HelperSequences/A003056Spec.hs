module HelperSequences.A003056Spec (main, spec) where
import Test.Hspec
import HelperSequences.A003056 (a003056)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A003056" $
  it "correctly computes the first 22 elements" $
    take 22 (map a003056 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,1,1,2,2,2,3,3,3,3,4,4,4,4,4,5,5,5,5,5,5,6]
