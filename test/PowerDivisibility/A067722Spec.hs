module PowerDivisibility.A067722Spec (main, spec) where
import Test.Hspec
import PowerDivisibility.A067722 (a067722)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A067722" $
  it "correctly computes the first 20 elements" $
    take 20 (map a067722 [0..]) `shouldBe` expectedValue where
      expectedValue = [1,3,6,9,5,15,18,21,10,7,30,33,15,39,42,45,9,51,14,57]
