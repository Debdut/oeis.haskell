module Delahaye.A338016Spec (main, spec) where
import Test.Hspec
import Delahaye.A338016 (a338016)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A338016" $
  it "correctly computes the first 20 elements" $
    take 20 (map a338016 [1..]) `shouldBe` expectedValue where
      expectedValue = [0, 0, 9, 0, 12, 16, 0, 30, 40, 100, 0, 54, 72, 180, 324, 0, 69, 92, 230, 414]
