module Palindromes.A249638Spec (main, spec) where
import Test.Hspec
import Palindromes.A249638 (a249638)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A249638" $
  it "correctly computes the first 10 elements" $
    take 10 (map a249638 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,0,5,45,245,1305,6605,33405,167405,838845]
