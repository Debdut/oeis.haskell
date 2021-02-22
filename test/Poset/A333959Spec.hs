module Poset.A333959Spec (main, spec) where
import Test.Hspec
import Poset.A333959 (a333959)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A333959" $
  it "correctly computes the first 20 elements" $
    map a333959 [1..20] `shouldBe` expectedValue where
      expectedValue = [1,6,15,33,65,77,154,161,217,231,455,469,483,693,957,987,1001,1449,1463,2021]
