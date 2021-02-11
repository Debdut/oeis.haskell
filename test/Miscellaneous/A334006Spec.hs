module Miscellaneous.A334006Spec (main, spec) where
import Test.Hspec
import Miscellaneous.A334006 (a334006)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A334006" $
  it "correctly computes the first 20 elements" $
    map a334006 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,1,1,1,3,1,1,2,1,3,1,5,1,1,1,1,3,1,3,1]
