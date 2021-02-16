module Palindromes.A006995Spec (main, spec) where
import Test.Hspec
import Palindromes.A006995 (a006995)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A006995" $
  it "correctly computes the first 20 elements" $
    take 20 (map a006995 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,1,3,5,7,9,15,17,21,27,31,33,45,51,63,65,73,85,93,99]
