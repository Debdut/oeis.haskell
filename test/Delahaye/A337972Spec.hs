module Delahaye.A337972Spec (main, spec) where
import Test.Hspec
import Delahaye.A337972 (a337972)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A337972" $
  it "correctly computes the first 20 elements" $
    take 20 (map a337972 [1..]) `shouldBe` expectedValue where
      expectedValue = [2, 4, 6, 8, 10, 14, 13, 15, 19, 24, 23, 25, 29, 34, 44, 31, 33, 37, 42, 52]
