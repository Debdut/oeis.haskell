module Delahaye.A338014Spec (main, spec) where
import Test.Hspec
import Delahaye.A338014 (a338014)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A338014" $
  it "correctly computes the first 20 elements" $
    take 20 (map a338014 [1..]) `shouldBe` expectedValue where
      expectedValue = [0, 3, 6, 4, 7, 8, 10, 13, 14, 20, 18, 21, 22, 28, 36, 23, 26, 27, 33, 41]
