module Anagram.A279963Spec (main, spec) where
import Test.Hspec
import Anagram.A279963 (a279963)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A279963" $
  it "correctly computes the first 20 elements" $
    take 20 (map a279963 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,8,12,15,16,18,20,21,24,27,28,30,32,33,35,36,39,40,42,44]
