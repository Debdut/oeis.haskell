module Miscellaneous.A309978Spec (main, spec) where
import Test.Hspec
import Miscellaneous.A309978 (a309978)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A309978" $
  it "correctly computes the first 20 elements" $
    map a309978 [1..20] `shouldBe` expectedValue where
      expectedValue = [0,1,1,2,1,3,1,2,1,3,1,3,1,2,1,2,1,3,1,3]
