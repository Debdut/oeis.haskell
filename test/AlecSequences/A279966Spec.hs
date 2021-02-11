module AlecSequences.A279966Spec (main, spec) where
import Test.Hspec
import AlecSequences.A279966 (a279966)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A279966" $
  it "correctly computes the first 20 elements" $
    take 20 (map a279966 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,2,2,4,2,5,1,5,2,5,2,5,4,5,0,4,1,9]
