module Delahaye.A337658Spec (main, spec) where
import Test.Hspec
import Delahaye.A337658 (a337658)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A337658" $
  it "correctly computes the first 20 elements" $
    take 20 (map a337658 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,5,11,13,15,18,19,21,25,26,28,31,34,35,39,40,41,42,43,45]
