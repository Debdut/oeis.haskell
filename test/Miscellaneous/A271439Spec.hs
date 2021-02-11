module Miscellaneous.A271439Spec (main, spec) where
import Test.Hspec
import Miscellaneous.A271439 (a271439)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A271439" $
  it "correctly computes the first 20 elements" $
    take 20 (map a271439 [0..]) `shouldBe` expectedValue where
      expectedValue = [0,0,1,0,2,3,0,4,5,6,0,7,8,9,10,0,11,12,13,14]
