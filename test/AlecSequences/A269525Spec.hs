module AlecSequences.A269525Spec (main, spec) where
import Test.Hspec
import AlecSequences.A269525 (a269525)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A269525" $
  it "correctly computes the first 20 elements" $
    take 20 (map a269525 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,3,6,6,15,6,28,6,37,16,66,16,47,61,100,45,125,45,162]
