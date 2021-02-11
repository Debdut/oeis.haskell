module AlecSequences.A280172Spec (main, spec) where
import Test.Hspec
import AlecSequences.A280172 (a280172)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A280172" $
  it "correctly computes the first 20 elements" $
    take 20 (map a280172 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,2,3,1,3,4,4,4,4,5,3,1,3,5,6,6,2,2,6]
