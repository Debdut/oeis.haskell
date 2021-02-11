module AlecSequences.A279965Spec (main, spec) where
import Test.Hspec
import AlecSequences.A279965 (a279965)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A279965" $
  it "correctly computes the first 20 elements" $
    take 20 (map a279965 [1..]) `shouldBe` expectedValue where
      expectedValue = [0,1,1,1,3,1,2,1,5,2,2,2,5,3,4,3,4,3,8,4]
