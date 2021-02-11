module AlecAirport.A286091Spec (main, spec) where
import Test.Hspec
import AlecAirport.A286091 (a286091)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A286091" $
  it "correctly computes the first 20 elements" $
    take 20 (map a286091 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,5,11,4,3,18,26,35,48,15,76,64,97,135,29,6,175,98]
