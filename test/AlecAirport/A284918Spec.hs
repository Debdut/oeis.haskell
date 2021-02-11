module AlecAirport.A284918Spec (main, spec) where
import Test.Hspec
import AlecAirport.A284918 (a284918)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A284918" $
  it "correctly computes the first 20 elements" $
    take 20 (map a284918 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,2,6,4,8,8,12,13,5,12,16,16,17,21,11,17,27,7]
