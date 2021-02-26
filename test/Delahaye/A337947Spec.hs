module Delahaye.A337947Spec (main, spec) where
import Test.Hspec
import Delahaye.A337947 (a337947)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A337947" $
  it "correctly computes the first 20 elements" $
    take 20 (map a337947 [1..]) `shouldBe` expectedValue where
      expectedValue = [5,11,16,17,18,20,26,27,28,32,35,38,39,40,41,43,45,46,51,53]
