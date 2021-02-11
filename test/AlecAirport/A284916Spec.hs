module AlecAirport.A284916Spec (main, spec) where
import Test.Hspec
import AlecAirport.A284916 (a284916)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A284916" $
  it "correctly computes the first 20 elements" $
    take 20 (map a284916 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,5,9,14,7,19,25,2,33,43,54,67,27,47,64,78,94,118]
