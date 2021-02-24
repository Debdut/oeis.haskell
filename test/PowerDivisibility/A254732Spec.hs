module PowerDivisibility.A254732Spec (main, spec) where
import Test.Hspec
import PowerDivisibility.A254732 (a254732)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A254732" $
  it "correctly computes the first 20 elements" $
    take 20 (map a254732 [1..]) `shouldBe` expectedValue where
      expectedValue = [2,4,6,6,10,12,14,12,12,20,22,18,26,28,30,20,34,24,38,30]
