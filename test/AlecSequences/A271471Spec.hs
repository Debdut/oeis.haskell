module AlecSequences.A271471Spec (main, spec) where
import Test.Hspec
import AlecSequences.A271471 (a271471)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A271471" $
  it "correctly computes the first 5 elements" $
    take 5 (map a271471 [1..]) `shouldBe` expectedValue where
      expectedValue = [5,17,28,37,82]
