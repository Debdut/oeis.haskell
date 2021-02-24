module PowerDivisibility.A019555Spec (main, spec) where
import Test.Hspec
import PowerDivisibility.A019555 (a019555)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A019555" $
  it "correctly computes the first 20 elements" $
    take 20 (map a019555 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,2,5,6,7,2,3,10,11,6,13,14,15,4,17,6,19,10]
