module Chess.A278211Spec (main, spec) where
import Test.Hspec
import Chess.A278211 (a278211)

main :: IO ()
main = hspec spec

spec :: Spec
spec = describe "A278211" $
  it "correctly computes the first 3 elements" $
      map a278211 [1..3] `shouldBe` expectedValue where
        expectedValue = [0,4,12]
