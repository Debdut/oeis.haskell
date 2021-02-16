module Palindromes.A298475Spec (main, spec) where
import Test.Hspec
import Palindromes.A298475 (a298475)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A298475" $
  it "correctly computes the first 20 elements" $
    take 20 (map a298475 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,1,2,1,2,1,2,1,2,2,2,2,2,1,2,1,2,2,2]
