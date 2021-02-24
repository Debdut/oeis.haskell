module PowerDivisibility.A072905Spec (main, spec) where
import Test.Hspec
import PowerDivisibility.A072905 (a072905)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A072905" $
  it "correctly computes the first 20 elements" $
    take 20 (map a072905 [1..]) `shouldBe` expectedValue where
      expectedValue = [4,8,12,9,20,24,28,18,16,40,44,27,52,56,60,25,68,32,76,45]
