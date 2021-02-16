module Palindromes.A254128Spec (main, spec) where
import Test.Hspec
import Palindromes.A254128 (a254128)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A254128" $
  it "correctly computes the first 10 elements" $
    take 10 (map a254128 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,0,0,4,8,20,40,88,176,364]
