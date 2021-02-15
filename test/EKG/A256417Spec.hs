module EKG.A256417Spec (main, spec) where
import Test.Hspec
import EKG.A256417 (a256417)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A256417" $
  it "correctly computes the first 20 elements" $
    take 20 (map a256417 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,4,4,4,6,6,12,8,10,10,10,18,14,14,14,24,16,20,22,22]
