module Polynomial.A329479Spec (main, spec) where
import Test.Hspec
import Polynomial.A329479 (a329479)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A329479" $
  it "correctly computes the first 20 elements" $
    map a329479 [1..20] `shouldBe` expectedValue where
      expectedValue = [0,0,0,0,1,2,6,15,30,66,121,242,462,903,1806,3570,7225,14450,29070,58311]
