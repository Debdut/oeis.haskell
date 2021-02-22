module Chess.A279212Spec (main, spec) where
import Test.Hspec
import Chess.A279212 (a279212)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A279212" $
  it "correctly computes the first 20 elements" $
      map a279212 [1..20] `shouldBe` expectedValue where
        expectedValue = [1, 1, 2, 2, 6, 11, 4, 15, 39, 72, 8, 37, 119, 293, 543, 16, 88, 330, 976, 2364]
