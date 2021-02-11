module AlecAirport.A284548Spec (main, spec) where
import Test.Hspec
import AlecAirport.A284548 (a284548)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A284548" $
  it "correctly computes the first 20 elements" $
    take 20 (map a284548 [0..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,2,1,1,3,3,4,2,2,1,1,4,5,5,6,2,2,3]
