module Poset.A334231Spec (main, spec) where
import Test.Hspec
import Poset.A334231 (a334231)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A334231" $
  it "correctly computes the first 20 elements" $
    map a334231 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,2,2,3,3,3,4,4,6,4,5,5,15,5,5,6,6,6,6,15]
