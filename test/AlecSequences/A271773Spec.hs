module AlecSequences.A271773Spec (main, spec) where
import Test.Hspec
import AlecSequences.A271773 (a271773)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A271773" $
  it "correctly computes the first 20 elements" $
    take 20 (map a271773 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,1,2,1,4,1,6,3,5,1,10,1,12,9,2,1,16,1,18,7]
