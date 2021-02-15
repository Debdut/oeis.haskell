module Nonpalindromes.A252701Spec (main, spec) where
import Test.Hspec
import Nonpalindromes.A252701 (a252701)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A252701" $
  it "correctly computes the first 10 elements" $
    take 10 (map a252701 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,8,56,392,3080,24248,193592,1545656,12362168,98873096]
