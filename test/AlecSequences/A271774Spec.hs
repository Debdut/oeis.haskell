module AlecSequences.A271774Spec (main, spec) where
import Test.Hspec
import AlecSequences.A271774 (a271774)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A271774" $
  it "correctly computes the first 20 elements" $
    take 20 (map a271774 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,3,2,5,2,7,4,7,2,11,2,13,6,13,2,17,2,19]
