module Nonpalindromes.A252703Spec (main, spec) where
import Test.Hspec
import Nonpalindromes.A252703 (a252703)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A252703" $
  it "correctly computes the first 10 elements" $
    take 10 (map a252703 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,10,90,810,8010,79290,792090,7912890,79120890,791129610]
