module AlecSequences.A279967Spec (main, spec) where
import Test.Hspec
import AlecSequences.A279967 (a279967)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A279967" $
  it "correctly computes the first 20 elements" $
    take 20 (map a279967 [1..]) `shouldBe` expectedValue where
      expectedValue = [1,1,2,2,2,7,2,9,10,15,2,10,1,13,17,8,0,13,1,14]
