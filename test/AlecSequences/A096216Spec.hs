module AlecSequences.A096216Spec (main, spec) where
import Test.Hspec
import AlecSequences.A096216 (a096216)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A096216" $
  it "correctly computes the first 20 elements" $
    take 20 (map a096216 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,2,4,2,6,2,7,3,10,3,12,4,9,6,16,3,18,7]
