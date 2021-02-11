module Miscellaneous.A333978Spec (main, spec) where
import Test.Hspec
import Miscellaneous.A333978 (a333978)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A333978" $
  it "correctly computes the first 20 elements" $
    map a333978 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,2,4,6,8,12,16,18,24,32,36,48,54,64,72,96,108,120,128,144]
