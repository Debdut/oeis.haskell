module Nonpalindromes.A252699Spec (main, spec) where
import Test.Hspec
import Nonpalindromes.A252699 (a252699)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A252699" $
  it "correctly computes the first 10 elements" $
    take 10 (map a252699 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,6,30,150,870,5070,30270,180750,1083630,6496710]
