module Miscellaneous.A261863Spec (main, spec) where
import Test.Hspec
import Miscellaneous.A261863 (a261863)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A261863" $
  it "correctly computes the first 20 elements" $
    take 20 (map a261863 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,4,5,12,7,13,9,16,11,29,11,23,19,22,13,36,17,40]
