module AlecAirport.A284549Spec (main, spec) where
import Test.Hspec
import AlecAirport.A284549 (a284549)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A284549" $
  it "correctly computes the first 20 elements" $
    take 20 (map a284549 [0..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,2,1,3,3,4,2,1,1,2,4,5,5,6,6,4,3,2]
