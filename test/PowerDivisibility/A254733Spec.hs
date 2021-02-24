module PowerDivisibility.A254733Spec (main, spec) where
import Test.Hspec
import PowerDivisibility.A254733 (a254733)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A254733" $
  it "correctly computes the first 20 elements" $
    take 20 (map a254733 [1..]) `shouldBe` expectedValue where
      expectedValue = [2,4,6,6,10,12,14,10,12,20,22,18,26,28,30,20,34,24,38,30]
