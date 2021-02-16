module Palindromes.A298481Spec (main, spec) where
import Test.Hspec
import Palindromes.A298481 (a298481)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A298481" $
  it "correctly computes the first 20 elements" $
    take 20 (map a298481 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,1,1,1,1,1,1,1,2,1,1,1,1,1,1,1,1,1,1]
