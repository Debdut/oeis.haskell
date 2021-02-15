module Nonpalindromes.A252698Spec (main, spec) where
import Test.Hspec
import Nonpalindromes.A252698 (a252698)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A252698" $
  it "correctly computes the first 10 elements" $
    take 10 (map a252698 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,5,20,80,380,1820,9020,44720,223220,1114280]
