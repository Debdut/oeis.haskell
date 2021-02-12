module Anagram.A280164Spec (main, spec) where
import Test.Hspec
import Anagram.A280164 (a280164)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A280164" $
  it "correctly computes the first 20 elements" $
    take 20 (map a280164 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,0,0,0,0,0,0,1,0,0,0,1,0,0,1,1,0,1,0,1]
