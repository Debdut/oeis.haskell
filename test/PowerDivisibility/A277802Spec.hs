module PowerDivisibility.A277802Spec (main, spec) where
import Test.Hspec
import PowerDivisibility.A277802 (a277802)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A277802" $
  it "correctly computes the first 20 elements" $
    take 20 (map a277802 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,4,9,2,25,36,49,3,100,121,18,169,196,225,289,12,361,50,441,484]
