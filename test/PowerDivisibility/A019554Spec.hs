module PowerDivisibility.A019554Spec (main, spec) where
import Test.Hspec
import PowerDivisibility.A019554 (a019554)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A019554" $
  it "correctly computes the first 20 elements" $
    take 20 (map a019554 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,2,5,6,7,4,3,10,11,6,13,14,15,4,17,6,19,10]
