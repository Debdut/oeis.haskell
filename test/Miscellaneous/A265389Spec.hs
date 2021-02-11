module Miscellaneous.A265389Spec (main, spec) where
import Test.Hspec
import Miscellaneous.A265389 (a265389)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A265389" $
  it "correctly computes the first 20 elements" $
    take 20 (map a265389 [1..]) `shouldBe` expectedValue where
      expectedValue = [6,16,27,36,46,57,66,75,87,96,106,117,126,136,147,156,165,177,186,196]
