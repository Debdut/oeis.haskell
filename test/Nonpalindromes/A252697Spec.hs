module Nonpalindromes.A252697Spec (main, spec) where
import Test.Hspec
import Nonpalindromes.A252697 (a252697)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A252697" $
  it "correctly computes the first 10 elements" $
    take 10 (map a252697 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,4,12,36,132,492,1932,7596,30252,120516]
