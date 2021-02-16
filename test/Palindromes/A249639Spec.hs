module Palindromes.A249639Spec (main, spec) where
import Test.Hspec
import Palindromes.A249639 (a249639)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A249639" $
  it "correctly computes the first 10 elements" $
    take 10 (map a249639 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,0,6,66,426,2706,16386,99186,595986,3580986]
