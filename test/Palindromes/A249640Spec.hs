module Palindromes.A249640Spec (main, spec) where
import Test.Hspec
import Palindromes.A249640 (a249640)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A249640" $
  it "correctly computes the first 10 elements" $
    take 10 (map a249640 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,0,7,91,679,5005,35287,248731,1742839,12211675]
