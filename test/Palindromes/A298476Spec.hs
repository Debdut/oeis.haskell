module Palindromes.A298476Spec (main, spec) where
import Test.Hspec
import Palindromes.A298476 (a298476)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A298476" $
  it "correctly computes the first 4 elements" $
    take 4 (map a298476 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,37,203]
