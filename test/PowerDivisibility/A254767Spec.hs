module PowerDivisibility.A254767Spec (main, spec) where
import Test.Hspec
import PowerDivisibility.A254767 (a254767)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A254767" $
  it "correctly computes the first 20 elements" $
    take 20 (map a254767 [1..]) `shouldBe` expectedValue where
      expectedValue = [8,4,9,16,25,36,49,27,24,100,121,18,169,196,225,32,289,96,361,50]
