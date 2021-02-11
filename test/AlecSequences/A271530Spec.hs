module AlecSequences.A271530Spec (main, spec) where
import Test.Hspec
import AlecSequences.A271530 (a271530)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A271530" $
  it "correctly computes the first 20 elements" $
    take 20 (map a271530 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,1,24,1,12,3,40,1,480,7,432,15,28,13,24,11,40320,3]
