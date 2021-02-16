module Palindromes.A298477Spec (main, spec) where
import Test.Hspec
import Palindromes.A298477 (a298477)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A298477" $
  it "correctly computes the first 10 elements" $
    take 10 (map a298477 [1..]) `shouldBe` expectedValue where
      expectedValue = [2, 2, 4, 12, 24, 12, 28, 4, 16, 60]
