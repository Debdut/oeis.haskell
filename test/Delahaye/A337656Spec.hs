module Delahaye.A337656Spec (main, spec) where
import Test.Hspec
import Delahaye.A337656 (a337656)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A337656" $
  it "correctly computes the first 20 elements" $
    take 20 (map a337656 [1..]) `shouldBe` expectedValue where
      expectedValue = [0, 1, 3, 7, 12, 20, 30, 44, 65, 91, 107, 122, 147, 196, 230, 263, 329, 375, 397, 472]
