module AlecAirport.A284917Spec (main, spec) where
import Test.Hspec
import AlecAirport.A284917 (a284917)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A284917" $
  it "correctly computes the first 10 elements" $
    take 10 (map a284917 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,5,9,16,25,38,58,72]
