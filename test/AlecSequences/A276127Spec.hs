module AlecSequences.A276127Spec (main, spec) where
import Test.Hspec
import AlecSequences.A276127 (a276127)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A276127" $
  it "correctly computes the first 20 elements" $
    take 20 (map a276127 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,2,4,5,3,6,7,6,7,5,8,8,9,7,10,9,8,9,13,11]
