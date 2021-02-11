module Miscellaneous.A318271Spec (main, spec) where
import Test.Hspec
import Miscellaneous.A318271 (a318271)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A318271" $
  it "correctly computes the first 20 elements" $
    take 10 (map a318271 [1..]) `shouldBe` expectedValue where
      expectedValue = [1, 1, 2, 3, 2, 3, 5, 4, 3, 2]
