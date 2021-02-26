module Delahaye.A337659Spec (main, spec) where
import Test.Hspec
import Delahaye.A337659 (a337659)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A337659" $
  it "correctly computes the first 20 elements" $
    take 20 (map a337659 [1..]) `shouldBe` expectedValue where
      expectedValue = [2, 3, 4, 6, 7, 10, 8, 9, 12, 14, 16, 17, 20, 22, 30, 23, 24, 27, 29, 37]
