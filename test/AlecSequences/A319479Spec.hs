module AlecSequences.A319479Spec (main, spec) where
import Test.Hspec
import AlecSequences.A319479 (a319479)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A319479" $
  it "correctly computes the first 8 elements" $
    map a319479 [1..8] `shouldBe` expectedValue where
      expectedValue = [1, 1, 2, 1, 4, 8, 16, 29]
