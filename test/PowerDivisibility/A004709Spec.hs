module PowerDivisibility.A004709Spec (main, spec) where
import Test.Hspec
import PowerDivisibility.A004709 (a004709)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A004709" $
  it "correctly computes the first 20 elements" $
    take 20 (map a004709 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,4,5,6,7,9,10,11,12,13,14,15,17,18,19,20,21,22]
