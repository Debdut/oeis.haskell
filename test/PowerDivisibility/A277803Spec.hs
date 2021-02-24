module PowerDivisibility.A277803Spec (main, spec) where
import Test.Hspec
import PowerDivisibility.A277803 (a277803)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A277803" $
  it "correctly computes the first 20 elements" $
    take 20 (map a277803 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,2,5,6,7,3,10,11,12,13,14,15,17,12,19,20,21,22]
