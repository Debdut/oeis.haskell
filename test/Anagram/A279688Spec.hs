module Anagram.A279688Spec (main, spec) where
import Test.Hspec
import Anagram.A279688 (a279688)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A279688" $
  it "correctly computes the first 20 elements" $
    take 20 (map a279688 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,8,18,21,27,32,40,48,65,66,72,78,86,96,98,99,104,108,111,114]
