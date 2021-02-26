module Delahaye.A337973Spec (main, spec) where
import Test.Hspec
import Delahaye.A337973 (a337973)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A337973" $
  it "correctly computes the first 20 elements" $
    take 20 (map a337973 [1..]) `shouldBe` expectedValue where
      expectedValue = [2, 4, 4, 8, 6, 8, 13, 10, 10, 13, 23, 15, 14, 15, 23, 31, 25, 19, 19, 25]
