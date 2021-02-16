module Palindromes.A298474Spec (main, spec) where
import Test.Hspec
import Palindromes.A298474 (a298474)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A298474" $
  it "correctly computes the first 5 elements" $
    take 5 (map a298474 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,6,8,11]
