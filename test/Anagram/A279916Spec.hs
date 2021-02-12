module Anagram.A279916Spec (main, spec) where
import Test.Hspec
import Anagram.A279916 (a279916)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A279916" $
  it "correctly computes the first 20 elements" $
    take 20 (map a279916 [2..]) `shouldBe` expectedValue where
      expectedValue = [5,4,8,4,3,5,5,14,4,4,4,3,3,3,4,3,4,4,4,4]
