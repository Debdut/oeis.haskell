module Palindromes.A249642Spec (main, spec) where
import Test.Hspec
import Palindromes.A249642 (a249642)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A249642" $
  it "correctly computes the first 10 elements" $
    take 10 (map a249642 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,0,9,153,1449,13617,123129,1113273,10024569,90266553]
