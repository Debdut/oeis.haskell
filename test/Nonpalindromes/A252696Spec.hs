module Nonpalindromes.A252696Spec (main, spec) where
import Test.Hspec
import Nonpalindromes.A252696 (a252696)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A252696" $
  it "correctly computes the first 10 elements" $
    take 10 (map a252696 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,3,6,12,30,78,222,636,1878,5556]
