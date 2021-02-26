module Delahaye.A337660Spec (main, spec) where
import Test.Hspec
import Delahaye.A337660 (a337660)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A337660" $
  it "correctly computes the first 20 elements" $
    take 20 (map a337660 [1..]) `shouldBe` expectedValue where
      expectedValue = [2, 3, 3, 6, 4, 6, 8, 7, 7, 8, 16, 9, 10, 9, 16, 23, 17, 12, 12, 17]
