module PowerDivisibility.A254734Spec (main, spec) where
import Test.Hspec
import PowerDivisibility.A254734 (a254734)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A254734" $
  it "correctly computes the first 20 elements" $
    take 20 (map a254734 [1..]) `shouldBe` expectedValue where
      expectedValue = [2,4,6,6,10,12,14,10,12,20,22,18,26,28,30,18,34,24,38,30]
