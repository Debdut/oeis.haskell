module AlecAirport.A286511Spec (main, spec) where
import Test.Hspec
import AlecAirport.A286511 (a286511)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A286511" $
  it "correctly computes the first 20 elements" $
    take 20 (map a286511 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,3,1,7,10,17,1,22,29,35,40,28,74,5,1,70,73,90,109]
