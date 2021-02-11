module AlecSequences.A271531Spec (main, spec) where
import Test.Hspec
import AlecSequences.A271531 (a271531)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A271531" $
  it "correctly computes the first 20 elements" $
    take 20 (map a271531 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,1,12,1,30,3,28,9,24,5,132,3,26,7,420,1,360,3]
