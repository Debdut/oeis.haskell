module Palindromes.A248122Spec (main, spec) where
import Test.Hspec
import Palindromes.A248122 (a248122)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A248122" $
  it "correctly computes the first 10 elements" $
    take 10 (map a248122 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,0,3,15,51,165,507,1551,4683,14127]
