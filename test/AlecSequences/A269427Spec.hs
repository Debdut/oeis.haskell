module AlecSequences.A269427Spec (main, spec) where
import Test.Hspec
import AlecSequences.A269427 (a269427)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A269427" $
  it "correctly computes the first 20 elements" $
    take 20 (map a269427 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,1,4,1,3,2,4,3,3,1,7,4,2,1,7,3,4,3]
