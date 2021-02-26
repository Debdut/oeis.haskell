module Delahaye.A337662Spec (main, spec) where
import Test.Hspec
import Delahaye.A337662 (a337662)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A337662" $
  it "correctly computes the first 20 elements" $
    take 20 (map a337662 [1..]) `shouldBe` expectedValue where
      expectedValue = [1, 2, 2, 5, 4, 5, 7, 10, 10, 7, 15, 14, 25, 14, 15, 22, 30, 35, 35, 30]
