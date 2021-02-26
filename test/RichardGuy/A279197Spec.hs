module RichardGuy.A279197Spec (main, spec) where
import Test.Hspec
import RichardGuy.A279197 (a279197)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A279197" $
  it "correctly computes the first 8 elements" $
    take 8 (map a279197 [0..]) `shouldBe` expectedValue where
      expectedValue = [1,1,1,2,2,11,11,55]
