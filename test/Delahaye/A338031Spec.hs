module Delahaye.A338031Spec (main, spec) where
import Test.Hspec
import Delahaye.A338031 (a338031)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A338031" $
  it "correctly computes the first 20 elements" $
    take 20 (map a338031 [1..]) `shouldBe` expectedValue where
      expectedValue = [0, 1, 2, 3, 4, 6, 7, 8, 10, 14, 12, 13, 15, 19, 24, 20, 21, 23, 27, 32]
