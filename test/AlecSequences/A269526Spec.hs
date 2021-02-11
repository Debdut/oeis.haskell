module AlecSequences.A269526Spec (main, spec) where
import Test.Hspec
import AlecSequences.A269526 (a269526)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A269526" $
  it "correctly computes the first 20 elements" $
    take 20 (map a269526 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,3,3,4,2,4,1,5,6,5,2,6,1,4,6,7,3,2,8]
