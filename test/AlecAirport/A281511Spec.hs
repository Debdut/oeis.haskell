module AlecAirport.A281511Spec (main, spec) where
import Test.Hspec
import AlecAirport.A281511 (a281511)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A281511" $
  it "correctly computes the first 20 elements" $
    take 20 (map a281511 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,1,2,2,3,1,3,2,4,3,1,4,4,2,5,3,3,4]
