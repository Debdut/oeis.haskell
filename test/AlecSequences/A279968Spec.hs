module AlecSequences.A279968Spec (main, spec) where
import Test.Hspec
import AlecSequences.A279968 (a279968)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A279968" $
  it "correctly computes the first 20 elements" $
    take 20 (map a279968 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,0,2,0,4,0,3,1,4,2,3,3,5,3,4,2,3,5,5,4]
